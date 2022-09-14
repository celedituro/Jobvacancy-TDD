require 'spec_helper'

describe JobOffer do
  describe 'valid?' do
    it 'should be invalid when title is blank' do
      check_validation(:title, "Title can't be blank") do
        described_class.new(location: 'a location')
      end
    end

    it 'should be valid when title is not blank' do
      job_offer = described_class.new(title: 'a title')
      expect(job_offer).to be_valid
    end

    it 'should be valid when experience is positive' do
      job_offer = described_class.new(title: 'a title', experience: 3)
      expect(job_offer).to be_valid
    end

    it 'should be valid when experience is cero' do
      job_offer = described_class.new(title: 'a title', experience: 0)
      expect(job_offer).to be_valid
    end

    it 'should be invalid when experience is negative' do
      check_validation(:experience, 'Experience must be greater than or equal to 0') do
        described_class.new(title: 'a title', experience: -3)
      end
    end

    it 'should be invalid when experience is a string' do
      check_validation(:experience, 'Experience is not a number') do
        described_class.new(title: 'a title', experience: 'hola')
      end
    end

    it 'should be invalid when experience is a decimal number' do
      check_validation(:experience, 'Experience must be an integer') do
        described_class.new(title: 'a title', experience: 3.5)
      end
    end
  end
end
