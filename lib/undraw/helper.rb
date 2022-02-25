module Undraw
  module Helper
    def undraw(filename, options = {})
      svg_file = read_svg(filename)
      color = options.delete(:color)
      output = recolor(svg_file, color)
      InlineSvg::TransformPipeline.generate_html_from(output, options).html_safe
    rescue Errno::ENOENT => e
      raise Undraw::FileNotFound,
            "Asset not found: #{filename}, you can manually download and place svg file in this path #{e.message.split('-').last}"
    end

    private

    def read_svg(filename)
      asset_path = "#{Undraw.root}/vendor/assets/images/undraw/#{filename}.svg"
      vendor_path = "#{Rails.root}/vendor/assets/images/undraw/#{filename}.svg"
      File.read(File.exist?(vendor_path) ? vendor_path : asset_path)
    end

    def recolor(svg_file, color)
      if color.is_a?(Hash)
        # :todo:
        # = undraw("building", color: { primary: #ff6347, hair: black }, class: 'undraw-features', size: "350*150")
        primary = color[:primary]
      else
        primary = color
      end
      svg_file.gsub!(/#6c63ff/, primary) if primary
      svg_file
    end
  end
end
