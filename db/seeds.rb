# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
State.create(state: 'Alabama')
State.create(state: 'Alaska')
State.create(state: 'Arizona')
State.create(state: 'Arkansas')
State.create(state: 'California')
State.create(state: 'Colorado')
State.create(state: 'Connecticut')
State.create(state: 'Delaware')
State.create(state: 'Florida')
State.create(state: 'Georgia')
State.create(state: 'Hawaii')
State.create(state: 'Idaho')
State.create(state: 'Illinois')
State.create(state: 'Indiana')
State.create(state: 'Iowa')
State.create(state: 'Kansas')
State.create(state: 'Kentucky')
State.create(state: 'Louisiana')
State.create(state: 'Maine')
State.create(state: 'Maryland')
State.create(state: 'Massachusetts')
State.create(state: 'Michigan')
State.create(state: 'Minnesota')
State.create(state: 'Mississippi')
State.create(state: 'Missouri')
State.create(state: 'Montana')
State.create(state: 'Nebraska')
State.create(state: 'Nevada')
State.create(state: 'New Hampshire')
State.create(state: 'New Jersey')
State.create(state: 'New Mexico')
State.create(state: 'New York')
State.create(state: 'North Carolina')
State.create(state: 'North Dakota')
State.create(state: 'Ohio')
State.create(state: 'Oklahoma')
State.create(state: 'Oregon')
State.create(state: 'Pennsylvania')
State.create(state: 'Rhode Island')
State.create(state: 'South Carolina')
State.create(state: 'South Dakota')
State.create(state: 'Tennessee')
State.create(state: 'Texas')
State.create(state: 'Utah')
State.create(state: 'Vermont')
State.create(state: 'Virginia')
State.create(state: 'Washington')
State.create(state: 'West Virginia')
State.create(state: 'Wisconsin')
State.create(state: 'Wyoming')

Municipality.create(name: 'Jersey City', state_id: 32, population: '60000')
Municipality.create(name: 'Bartholomew County', state_id: 16, population: '30000')
Municipality.create(name: 'South Ogden', state_id: 46, population: '35000')

Department.create(department: 'Clerk')
Department.create(department: 'Police')
Department.create(department: 'Parks and Recreation')

Form.create(form_name: 'Record Request', form_link: 'www.jerseycitynj.seamlessdocs.com/w/records_request', municipality_id: 3, department_id: 3)
Form.create(form_name: 'Search Warrant', form_link: 'www.jerseycitynj.seamlessdocs.com/w/records_request', municipality_id: 3, department_id: 3)
Form.create(form_name: 'Race Sign Up', form_link: 'www.jerseycitynj.seamlessdocs.com/w/records_request', municipality_id: 3, department_id: 3)



