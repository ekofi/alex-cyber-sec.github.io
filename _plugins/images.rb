module Jekyll
    class RenderImgTag < Liquid::Tag
  
      def initialize(tag_name, variables, tokens)
        super
        @variables = variables.split(" ", 3)
        @cdn = @variables[0]
        @url = @variables[1]
        @alt = @variables[2]
      end
  
      def render(context)
        "<img src='#{context[@cdn.strip]}#{context[@url.strip]}' alt='#{context[@alt.strip]}' class='post-img' />"
      end
    end
  end
  
  Liquid::Template.register_tag('render_img', Jekyll::RenderImgTag)