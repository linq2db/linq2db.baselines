-- PostgreSQL.15 PostgreSQL
DECLARE @DateTimeOffset TimestampTz -- DateTime
SET     @DateTimeOffset = '2020-02-29 17:54:55.123123+00:00'::timestamptz
DECLARE @DateTimeOffsetN TimestampTz -- DateTime
SET     @DateTimeOffsetN = '2020-02-29 17:54:55.123123+00:00'::timestamptz

UPDATE
	"Types"
SET
	"DateTimeOffset" = :DateTimeOffset,
	"DateTimeOffsetN" = :DateTimeOffsetN
WHERE
	"Types"."Id" = 2



