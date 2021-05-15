require 'rich_text_renderer'

module ContentfulRenderers
  # H2 node renderer.
  class HeadingTwoRenderer < RichTextRenderer::BaseBlockRenderer
    def render(node)
      whole_heading = ''

      node['content'].each do |content|
        return unless content['value'].present?
        whole_heading += content['value']
      end

      hash = whole_heading.parameterize
      "<h2><a id='#{hash}'>#{whole_heading}</a></h2>"
    end
  end
end
