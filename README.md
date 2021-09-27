![WellCheck Logo](/app/assets/images/wellcheck_logo.svg)
# [WellCheck](https://devpost.com/software/wellcheck) - A Pre-Disaster Wellness Check Registry 

## Inspiration

During Hurricane Ida, there were more deaths from heat than from flooding. Vulnerable residents, such as low-income minority renters without access to air conditioning or means of evacuation, were more likely to die from heat during the extended power outages due to the storm. A wellness check registry could have prevented these deaths. Though there are many disaster response apps, like Crowdsource Rescue, there are no nationally-scaled pre-disaster registries that link vulnerable residents with those who can provide wellness checks should a disaster occur.

We need a pre-disaster registration application that integrates with during- and post-disaster systems that allows at-risk residents to share their information with applicable relief organizations, without filling countless forms and having to provide information to which they might no longer have access. Current registration forms tend to be overly complicated and can scare people away from assistance. The State of Texas Emergency Assistance Registry is geared towards people with disabilities and people with access and functional needs and is not suitable for scale in its current form.

## What it does

WellCheck is a unified database that relief volunteers and organizations can access to save lives and later allocate FEMA funding. WellCheck caters to three user types:

1. <b>WellCheck Registrants</b>: Residents requesting a wellness check, with an emphasis on vulnerable individuals residing in high-risk areas. They are pre-registered in the WellCheck system, and provide status updates during a disaster.

2. <b>WellCheckers</b>: Volunteers or "block captains" from the area who will provide a wellness check during a disaster. They also serve as points of contact for first responders.

3. <b>Organizations</b>: Emergency Response & Management Agencies, States/County/City Gov’ts., NGOs, Non-profits, Civic Clubs, Social Impact orgs.

## How we built it

We began by building a prototype with Ruby on Rails and a team member provided a rails scaffolding which was pushed to another member's github and then the first member wrote up instructions on setting up the environment for Ruby, Ruby on Rails, and PostgreSQL. Then we used SCSS and Javascript to build out the app. The front end registration for the three roles and profiles is fully functional.

## What's next for WellCheck


- Improve web application development to ensure we can compete in the market, including blockchain integration. We need: UI/UX, DBA, CyberSecurity, PostgreSQL and Ruby on Rails.
- Build out the database schema to meet agencies' data and permission needs.
- Incorporate solutions using text-based and low-tech information gathering with permissions to add to database and contacts.
- Achieve impact and scale through community engagement and partnership building.
- Raise $200K in pre-seed funding via crowdfunding and disaster preparedness & relief grants, as well as selling “Good Neighbors Check” t-shirts.

## Installation

- Install Ruby on your machine following these instructions. <b>Change mentions of ruby version 2.7.4 to 3.0.2</b>  
[Link to instructions](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/installing-ruby-ruby-programming)
- Install Rails <b>Read section 3.1</b>  
[Link to instructions](https://guides.rubyonrails.org/getting_started.html)
- Install PostgreSQL (Ubuntu 20) <b>Follow up to Creating Your Rails App section</b>  
    - If `$ su - postgres` does not work to access <b>psql</b> try using `$ sudo -u postgres psql`
    - Replace `myapp` with `houstonhackathon`
    - Replace `password1` with `passwordOfYourChoice`  
[Link to instructions](https://www.digitalocean.com/community/tutorials/how-to-set-up-ruby-on-rails-with-postgres)
- Add Environment variables to .bashrc
    - Open bashrc file `$ nano ~/.bashrc`
    - Add `export HOUSTON_HACKATHON_2021_DATABASE_PASSWORD="passwordOfYourChoice(from previous step)"`
    - Save file
    - Restart terminal
- Clone Repository  
[Link to instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
- Cd into respository
- Run `$ bundle install`
- Run `$ rails webpacker:install`
- Run `$ rails db:create db:migrate db:seed`
- Run `$ rails server`
- Open browser to `localhost:3000`

### If authentication error when trying to run `$ rails db:create` try hardcoding the username and password. There is a problem with your environment variables...  
  
![Instruction Screenshot](/app/assets/images/hardcode_postgres.png)

- Make sure to remove the password including the greater and less symbols and everything in between ex. <%= [...] %>
- Replace password with password set in PostgreSQL install step
- Save file and retry

