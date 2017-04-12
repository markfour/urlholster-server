json.extract! urlitem, :id, :user_id, :rawurl, :preserveDate, :unread, :archive, :created_at, :updated_at
json.url urlitem_url(urlitem, format: :json)
