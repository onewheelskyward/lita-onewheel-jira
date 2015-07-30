module Lita
  module Handlers
    class OnewheelJira < Handler
      route /^jira (\d{4,6})\s*$/,    :jirify, command: true
      route /^jira fl(\d{4,6})\s*$/,  :jirify, command: true
      route /^jira FL(\d{4,6})\s*$/,  :jirify, command: true
      route /^jira fl-(\d{4,6})\s*$/, :jirify, command: true

      def jirify(response)
        jira_number = response.matches[0][0]
        response.reply "https://shopigniter.atlassian.net/browse/FL-#{jira_number}"
      end
    end

    Lita.register_handler(OnewheelJira)
  end
end
