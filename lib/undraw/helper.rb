module Undraw
  module Helper

    def undraw(file_name, color: "6c63ff")
      svg_file = File.read("#{Undraw.root}/app/assets/images/#{file_name}.svg").gsub(/#6c63ff/, "##{color}")
      #inline_svg svg_file, class: 'some-class' 
      InlineSvg::TransformPipeline.generate_html_from(svg_file, {}).html_safe
    end

  end

end
