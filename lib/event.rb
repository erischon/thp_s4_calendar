require 'time'

class Event

  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 60 * 60 * 24
  end

  def end_date
    @start_date + (@duration * 60)
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    @start_date > Time.now
  end

  def is_soon?
    soon = @start_date - (30 * 60) 
    Time.now >= soon && Time.now < @start_date
  end

  def to_s
    puts "Titre de l'évènement : #{@title}"
    puts "Date et heure de début : #{@start_date}"
    puts "Durée : #{@duration} minutes"
    puts "Heure de fin : #{end_date.hour}H#{end_date.min}"
    puts "Participants :"
    @attendees.each { |participant| puts " - #{participant}"}
  end

end


