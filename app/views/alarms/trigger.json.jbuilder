# frozen_string_literal: true

json.id @alarm.id
json.name @alarm.name
json.created_at @alarm.created_at.strftime("%H:%M %d/%m/%Y")
