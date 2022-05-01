# frozen_string_literal: true

json.array! @alarms do |alarm|
  json.id alarm.id
  json.name alarm.name
  json.created_at alarm.created_at.strftime("%d/%m/%Y %H:%M:%S")
end
