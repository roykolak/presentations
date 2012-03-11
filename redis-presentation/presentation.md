!SLIDE

# Redis

!SLIDE

## TextingBuds.com

!SLIDE

* redis-server
* redis-cli

!SLIDE

## A key value store

!SLIDE

## No tables friend

!SLIDE

### No one to one
### No many to one
### No many to many

!SLIDE

### Straight up keys and values

!SLIDE

## Example

!SLIDE

## Storing phone numbers
### (basically ids)

!SLIDE

## phone numbers are people

!SLIDE

## People have properties

!SLIDE

### people:805-769-8255:buddy
### people:805-769-8255:blocks
### people:805-769-8255:buddies

!SLIDE

### Find all the people with a buddy

!SLIDE

## Data types yo

!SLIDE

* Strings
* Lists (arrays)
* Sets (unique)
* Hashes

!SLIDE

* GET
* SET
* LRANGE
* LREM
* RENAME
* SELECT
* INCR

!SLIDE

### people:805-769-8255:buddy
### people:765-444-3246:buddies
### people:234-745-8899:blocks
### people:234-998-5532:buddy
### people:123-653-7886:buddy

!SLIDE

## buddies

!SLIDE

## [
### 806-453-4563,
### 234-335-4433,
### 908-749-7733
## ]

!SLIDE

## In memory

!SLIDE

### (/etc/redis/redis.conf)
### ...
### save 900 1
### save 300 10
### save 60 100

!SLIDE

* After 900 sec (15 min) if at least 1 key changed
* After 300 sec (5 min) if at least 10 keys changed
* After 60 sec if at least 10000 keys changed

!SLIDE

## Append only mode

!SLIDE

## You can safely shutdown

!SLIDE

@@@ js
    var redis = require('redis').createClient();
    redis.select(1, function() {
      redis.get('people:805-769-8255:buddy', function(result) {
        // use result
      });
    });
@@@

!SLIDE

# Redis
