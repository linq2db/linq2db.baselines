-- PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeOffset TimestampTz -- DateTime
SET     @DateTimeOffset = '2020-02-29T17:54:55.1231234+00:00'
DECLARE @DateTimeOffsetN TimestampTz -- DateTime
SET     @DateTimeOffsetN = '2020-02-29T17:54:55.1231234+00:00'

UPDATE
	"Types"
SET
	"DateTimeOffset" = :DateTimeOffset,
	"DateTimeOffsetN" = :DateTimeOffsetN
WHERE
	"Types"."Id" = 2



