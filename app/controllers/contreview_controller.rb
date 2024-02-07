class ContreviewController < ApplicationController
  def index
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("file_name", "contreview/show.html.erb")
      end
    end
  end

  def minister_non_quantum_shift
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("minister_non_quantum_shift", "contreview/minister_non_quantum_shift")
      end
    end
  end

  def brittle_language
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("brittle_language", "contreview/brittle_language")
      end
    end
  end

  def the_wilding_process
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("the_wilding_process", "contreview/the_wilding_process")
      end
    end
  end

  def cities_that_shun_the_artist
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("cities_that_shun_the_artist", "contreview/cities_that_shun_the_artist")
      end
    end
  end

  def streams_of_light
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("streams_of_light", "contreview/streams_of_light")
      end
    end
  end

  def sir_keith_at_the_rampart
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("sir_keith_at_the_rampart", "contreview/sir_keith_at_the_rampart")
      end
    end
  end

  def the_muddled_mind_of_mr_hurd
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("the_muddled_mind_of_mr_hurd", "contreview/the_muddled_mind_of_mr_hurd")
      end
    end
  end

  def the_glory_of_whose_garden
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("the_glory_of_whose_garden", "contreview/the_glory_of_whose_garden")
      end
    end
  end

  def can_we_change_our_minds
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("can_we_change_our_minds", "contreview/can_we_change_our_minds")
      end
    end
  end

  def the_big_grey
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("the_big_grey", "contreview/the_big_grey")
      end
    end
  end
  def lords_of_misrule
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("lords_of_misrule", "contreview/lords_of_misrule")
      end
    end
  end

  def painted_tunnel
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("painted_tunnel", "contreview/painted_tunnel")
      end
    end
  end

  def to_merge_or_not_merge
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("to_merge_or_not_merge", "contreview/to_merge_or_not_merge")
      end
    end
  end

  def the_end_of_the_absurd
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("the_end_of_the_absurd", "contreview/the_end_of_the_absurd")
      end
    end
  end

  def spring
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("spring", "contreview/spring")
      end
    end
  end

  def orwell_in_suffolk
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("orwell_in_suffolk", "contreview/orwell_in_suffolk")
      end
    end
  end

  def samuel_beckett_max_wall_and_me
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("samuel_beckett_max_wall_and_me", "contreview/samuel_beckett_max_wall_and_me")
      end
    end
  end

  def cinderella
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("cinderella", "contreview/cinderella")
      end
    end
  end

  def dancing_with_swords
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("dancing_with_swords", "contreview/dancing_with_swords")
      end
    end
  end

  def changing_frames
    respond_to do |format|
      format.html
      format.pdf do
        render_common_pdf("changing_frames", "contreview/changing_frames")
      end
    end
  end


  def minister_non_quantum_shift_download
    html = render_to_string(action: :minister_non_quantum_shift, layout: "pdf_layout.html")
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data(pdf,
      filename: "minister_non_quantum_shift.pdf",
      disposition: 'attachment')
  end

  private

  def render_common_pdf(pdf_name, template_path)
    render pdf: pdf_name, template: template_path, layout: "layouts/pdf", formats: [:pdf]
  end
end
