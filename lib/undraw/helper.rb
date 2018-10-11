module Undraw
  module Helper

    def undraw(filename, transform_params={})
      asset_path = "#{Undraw.root}/vendor/assets/images/undraw/#{filename}.svg"
      begin
        svg_file = File.read(asset_path)
        svg_file.gsub!(/#6c63ff/, "#{transform_params[:color]}") if transform_params[:color].present?
        #inline_svg svg_file, class: 'some-class' 
        InlineSvg::TransformPipeline.generate_html_from(svg_file, transform_params).html_safe
      rescue Errno::ENOENT
        raise Undraw::FileNotFound.new("Asset not found: #{asset_path}")
      end
    end

  end

end
