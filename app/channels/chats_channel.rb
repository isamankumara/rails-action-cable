class ChatsChannel < ApplicationCable::Channel

    def subscribed
        stream_from "chat"
    end

    def chat_message(data)
        ActionCable.server.broadcast "chat" , success: 'yes', msg: data['msg']
    end

end