# Redis Command Cheatsheet

## Keys
SET key value [EX sec] [PX ms] [NX | XX] # NX: only set the key if not already exists; XX: only set the key if already exist.
GET key
KEYS keypattern                         # Blocks until complete, Never use in production, but for debugging
SCAN slot [MATCH pattern] [COUNT count] # Iterates using a cursor
DEL key [key ...]                       # Blocks
UNLINK key [key ...]                    # non-blocking
EXISTS key [key ...]                    # check if key exists
EXPIRE key 120                          # expire the key in 120 secs
TTL key                                 # check # sec until a key is deleted
PERSIST key                             # remove ttl on key, so key never expires

## Hashes
HSET key field value [field value ...]
HDEL key field [field...]
HEXISTS key field
HGET key field
HINCRBY key field increment
HKEYS key
HVALS key
HMSET key field value [field value ...]
HMGET key field [field ...] # get values of all the given fields
HGETALL key                 # get all field/value

## Lists
RPUSH key value [value ...]
LRANGE key start end
LPOP key
LLEN key            # retrive length of a list
LTRIM key start end # to prune a list to the specified range

## Sets
SADD key value
SMEMBERS key                # retreive all memebers of the set
SCARD key                   # get cardinality of members in the set
SINTER key [key...]         # get intersection of 2 sets
SISMEMBER key value         # check if the value is in the set
SREM key member [member...] # allows one or more elements to be removed by values
SPOP key [count]            # remove random count of item from set
SDIFF key [key...]          # get members of the set resulting from the difference between the 1st set and all the successive sets.

## Sorted Sets
ZADD key [NX | XX] score memeber [score member...]
ZREVRANGE key start end WITHSCORES
ZRANK
ZSCORE
ZCOUNT key min max # count # members in a sorted set with scores with in [min, max]
ZREM               # remove a member by value, there're other commands to remove by position/score
ZINTERSTORE destination numkeys key [key ...] [WEIGHTS weight] [AGGREGATE SUM | MIN | MAX]

## Transaction
MULTI
EXEC
DISCARD

## Optimistic Concurrency Control
WATCH key [key...]
UNWATCH

## Misc
TYPE key            # tell the type of the value
OBJECT ENCODING key # tell the encoding the data struct, say STRING->INT or FLOAT
