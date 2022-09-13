class JobOfferForm
  attr_accessor :id, :title, :location, :description, :experience

  def self.from(a_job_offer)
    form = JobOfferForm.new
    form.id = a_job_offer.id
    form.title = a_job_offer.title
    form.location = a_job_offer.location
    form.description = a_job_offer.description
    form.experience = a_job_offer.experience
    form
  end
end
