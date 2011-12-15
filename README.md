# Performance Hack for MongoID

### Description

Small patch to Mongoid::Criteria to limit and offset the MongoDB query to relevant objects when we try to use Array#[]. It's using Ruby MongoDB driver methods `limit` and `offset` to get only the relevant objects. Default behavior of Mongoid::Criteria is to get all objects in an array and only after take a subset of this array using Array#[].

### Installation

Simply add `activerelation_limit.rb` to `config/initializers/` in a Rails App.

### Usage

     Mongoid::Criteria#[3] # add limit(1) and offset(3) to Ruby MondDB Driver Query
     Mongoid::Criteria#[3..5] # add limit (2) and offset(3) to Ruby MondDB Driver Query
     Mongoid::Criteria#one # Get only one object (not first or last)
     
### Related

Same path for ActiveRecord : https://github.com/hartator/Performance-Hack-for-ActiveRecord