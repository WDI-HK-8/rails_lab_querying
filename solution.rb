#list of answers
1. TowTruck.all
2. Vehicle.find 3
3. Vehicle.find_by vin: 'D0985DF1593A350A4'
4. Vehicle.order :acquired_at
5. Vehicle.where(color: 'silver').order(:make)
6. Vehicle.where(make: 'Toyota', color: 'red')
7. Vehicle.where(category: 'motorcycle').count
8. Vehicle.where(released_at: nil).count
9. TowTruck.where("mileage > 200000")
10. Vehicle.where("released_at > ?", 8.month.ago)
11. Vehicle.where.not(fee: nil).average(:fee).to_f
12. Vehicle.where("fee > 0").order(fee: :desc).limit(3)
13. Vehicle.where("is_paid = false").count
14. Vehicle.where.not(released_at: nil).order(fee: :desc)
15. Vehicle.where.not(notes: "").select(:notes)
16. Vehicle.where("year > 1999").select(:vin)
17. Vehicle.where("color = 'silver'").select(:make, :model, :year).order(year: :desc)
18. Vehicle.where.not(fee: nil).sum(:fee).to_i

BONUS. 