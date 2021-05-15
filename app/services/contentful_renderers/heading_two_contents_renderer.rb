require 'rich_text_renderer'

module ContentfulRenderers
  # H1 node renderer.
  class HeadingTwoContentsRenderer < RichTextRenderer::BaseBlockRenderer
    def render(node)
      whole_heading = ''

      node['content'].each do |content|
        return unless content['value'].present?
        whole_heading += content['value']
      end

      hash = whole_heading.parameterize
      "<li class='govuk-body-s'><a class='govuk-link' href='##{hash}'>#{whole_heading}</a></li>"
    end
  end
end
