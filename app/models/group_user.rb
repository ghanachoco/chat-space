class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user
  # def user_id
  #   if (last_message = messages.last).present?
  #     if last_message.content?
  #       last_message.content
  #     else
  #       '画像が投稿されています'
  #     end
  #   else
  #     'まだメッセージはありません。'
  #   end
end
