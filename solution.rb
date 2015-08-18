# Get a list of all tow trucks.
TowTruck.all
# Get the vehicle with ID 3.
Vehicle.find(3)
# Get the vehicle with VIN D0985DF1593A350A4.
Vehicle.find_by(vin: 'D0985DF1593A350A4')
# Get a list of all vehicles sorted by acquisition date.
Vehicle.all.order(:acquired_at)
# Get a list of all silver vehicles, ordered alphabetically by make.
Vehicle.where(color: 'silver').order(:make)
# Get a list of all red Honda vehicles that are cars.
Vehicle.where("make = 'Honda' AND color = 'red' and category = 'car'")
# Get a count of all vehicles that are motorcycles.
Vehicle.where(category: 'motorcycle').count
# Get a count of vehicles that are currently on the lot (i.e. not released).
Vehicle.where(released_at: nil).count
# Get a list of all tow trucks whose mileage is over 200,000.
TowTruck.where('mileage > 200000')
# Get a list of all tow trucks whose last service was more than 8 months ago.
TowTruck.where("last_service_at <= :service_date",{service_date: Time.now.midnight-8.month})
# Get the average tow fee across all vehicles.
Vehicle.average(:fee).to_i
# Get the top 3 vehicles with the highest tow fees.
Vehicle.where.not(fee: nil).order(fee: :desc).limit(3)
# Get all vehicles that have a fee assessed which has not been paid.
Vehicle.where.not(fee: nil).where(is_paid: false)
# Get a list of all released vehicles, sorted by most recently released.
Vehicle.where.not(released_at: nil).order(released_at: :desc)
# Get a list of all vehicles that have notes.
Vehicle.where.not(notes: "")
# Get the VINs of all vehicles manufactured before the year 2000.
Vehicle.where("year < 2000").pluck(:vin)
# Get the make, model, and year of all silver vehicles, ordered by year.
Vehicle.where(color: "silver").order(year: :asc).pluck(:make, :model, :year)
# Get the total income from all vehicles (i.e. sum of all fees that are paid).
Vehicle.sum(:fee).to_i

