module Jekyll
    # Add raw_content attribute to checklists, so the original markdown is available
    # when rendering
    class RawContent < Generator
        def generate(site)
            site.collections['checklists'].docs.each do |checklist|
                checklist.data['raw_content'] = checklist.content
            end
        end
    end
end
