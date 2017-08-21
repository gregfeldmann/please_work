class ReceiversController < ApplicationController
  def index
    @receivers = Receiver.all

    render("receivers/index.html.erb")
  end

  def show
    @recommend = Recommend.new
    @receiver = Receiver.find(params[:id])

    render("receivers/show.html.erb")
  end

  def new
    @receiver = Receiver.new

    render("receivers/new.html.erb")
  end

  def create
    @receiver = Receiver.new

    @receiver.entertainment_id = params[:entertainment_id]
    @receiver.user_id = params[:user_id]

    save_status = @receiver.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/receivers/new", "/create_receiver"
        redirect_to("/receivers")
      else
        redirect_back(:fallback_location => "/", :notice => "Receiver created successfully.")
      end
    else
      render("receivers/new.html.erb")
    end
  end

  def edit
    @receiver = Receiver.find(params[:id])

    render("receivers/edit.html.erb")
  end

  def update
    @receiver = Receiver.find(params[:id])

    @receiver.entertainment_id = params[:entertainment_id]
    @receiver.user_id = params[:user_id]

    save_status = @receiver.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/receivers/#{@receiver.id}/edit", "/update_receiver"
        redirect_to("/receivers/#{@receiver.id}", :notice => "Receiver updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Receiver updated successfully.")
      end
    else
      render("receivers/edit.html.erb")
    end
  end

  def destroy
    @receiver = Receiver.find(params[:id])

    @receiver.destroy

    if URI(request.referer).path == "/receivers/#{@receiver.id}"
      redirect_to("/", :notice => "Receiver deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Receiver deleted.")
    end
  end
end
