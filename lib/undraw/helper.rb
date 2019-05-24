module Undraw
  module Helper

    def undraw(filename, transform_params={})
      asset_path = "#{Undraw.root}/vendor/assets/images/undraw/#{filename}.svg"
      vendor_path =  "#{Rails.root}/vendor/assets/images/undraw/#{filename}.svg"
      begin
        
        if File.exist?(vendor_path)
          svg_file = File.read(vendor_path)
        else
          svg_file = File.read(asset_path)
        end

        color = transform_params.delete(:color)
 
        if color.is_a?(Hash)
         #:todo:
         #= undraw("building", color: {primary: #ff6347, hair: black}, class: 'undraw-features', size: "350*150")
          primary = color[:primary]
        else
          primary = color
        end

        svg_file.gsub!(/#6c63ff/, primary) if primary
        #inline_svg svg_file, class: 'some-class' 
        InlineSvg::TransformPipeline.generate_html_from(svg_file, transform_params).html_safe
      rescue Errno::ENOENT
        raise Undraw::FileNotFound.new("Asset not found: #{asset_path}")
      end
    end

  end

end
