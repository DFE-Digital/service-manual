module GaTrackingHelper
  def track_selections(selected: {}, unselected: {})
    return unless selected.present? || unselected.present?

    event_props = [selected, unselected].map { |option|
      build_event_props(key: option[:key], label: option[:label], values: option[:values])
    }.flatten

    track_events(
      event_props
    )
  end

  def client_tracking_data
    {
      ga_cookie: cookies['_ga']&.gsub(/^(.*?\..*?\.)/, ''),
      ip_address: request.remote_ip,
      user_agent: request.env['HTTP_USER_AGENT']
    }
  end

  private

  def build_event_props(key:, label:, values:)
    values.map do |value|
      {
        key: key,
        label: label,
        value: value
      }
    end
  end
end
