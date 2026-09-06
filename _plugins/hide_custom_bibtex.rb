module Redesign
  module HideCustomBibtex
    CUSTOM_FIELDS = %w[
      abbr abstract additional_info altmetric annotation arxiv award award_name
      bibtex_show blog code dimensions html pdf poster preview selected slides supp
      video website google_scholar_id
    ].freeze

    def hide_custom_bibtex(input)
      output = input.to_s
      CUSTOM_FIELDS.each do |field|
        output = output.gsub(/^\s*#{Regexp.escape(field)}\s*=\s*\{.*?\},?\s*$\n?/i, "")
      end
      output.gsub(/^\s*author\s*=\s*\{.*?\},?\s*$/i) { |line| line.gsub(/[*†‡§¶‖&^]/, "") }
    end
  end
end

Liquid::Template.register_filter(Redesign::HideCustomBibtex)

