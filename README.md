# README

link for heroku [sample-dashboard](https://xldent-sample-dashboard.herokuapp.com/).


## Details About the project:

- ruby version: 2.6.4 <br />
- rails version: 5.2.4 <br />

- For authentication we used [devise gem](https://github.com/heartcombo/devise). <br />

- database we used `MySql` and in heroku used [ClearDB MySQL](https://elements.heroku.com/addons/cleardb). <br />

- For Data serialization [active_model_serializers](https://github.com/rails-api/active_model_serializers). <br />

- For Data Debugging [rails pry](https://github.com/pry/pry). <br />

- Testing using minitest and `Rspec`. <br />

## Details About the Endpoints:
### `Users`

```
for login: /users/sign_in  => [heroku](https://xldent-sample-dashboard.herokuapp.com/users/sign_in).
for signup: /users/sign_up => [heroku](https://xldent-sample-dashboard.herokuapp.com/users/sign_up).

```
### `Vendors`

[heroku](https://xldent-sample-dashboard.herokuapp.com/).
List/index, Create, Show, update, destroy

### `Products`

For each vendor will has list of products 
`/vendors/<vendor-id>/products`
When the vendor deleted all products related to this vendor will be deleted

[heroku](https://xldent-sample-dashboard.herokuapp.com/vendors/1/products).
List/index, Create, Show, update, destroy
