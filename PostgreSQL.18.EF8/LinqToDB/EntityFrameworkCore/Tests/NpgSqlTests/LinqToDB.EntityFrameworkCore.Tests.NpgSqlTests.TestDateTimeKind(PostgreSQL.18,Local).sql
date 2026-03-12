-- PostgreSQL.18 PostgreSQL
DECLARE @dt Timestamp -- DateTime2
SET     @dt = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."Id",
	e."Timestamp1",
	e."Timestamp2",
	e."TimestampTZ1",
	e."TimestampTZ2",
	e."TimestampTZ3"
FROM
	"TimeStamps" e
WHERE
	e."Timestamp1" = :dt



-- PostgreSQL.18 PostgreSQL
DECLARE @ldt Timestamp -- DateTime2
SET     @ldt = 02/29/2020 17:54:55

SELECT
	e."Id",
	e."Timestamp1",
	e."Timestamp2",
	e."TimestampTZ1",
	e."TimestampTZ2",
	e."TimestampTZ3"
FROM
	"TimeStamps" e
WHERE
	e."Timestamp2" = :ldt



-- PostgreSQL.18 PostgreSQL
DECLARE @dt TimestampTz -- DateTime
SET     @dt = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."Id",
	e."Timestamp1",
	e."Timestamp2",
	e."TimestampTZ1",
	e."TimestampTZ2",
	e."TimestampTZ3"
FROM
	"TimeStamps" e
WHERE
	e."TimestampTZ1" = :dt



-- PostgreSQL.18 PostgreSQL
DECLARE @dto TimestampTz -- DateTime
SET     @dto = '2020-02-29T17:14:55.1231234+00:00'

SELECT
	e."Id",
	e."Timestamp1",
	e."Timestamp2",
	e."TimestampTZ1",
	e."TimestampTZ2",
	e."TimestampTZ3"
FROM
	"TimeStamps" e
WHERE
	e."TimestampTZ2" = :dto



-- PostgreSQL.18 PostgreSQL
DECLARE @ins TimestampTz -- DateTime
SET     @ins = 2020-02-29T17:14:55Z

SELECT
	e."Id",
	e."Timestamp1",
	e."Timestamp2",
	e."TimestampTZ1",
	e."TimestampTZ2",
	e."TimestampTZ3"
FROM
	"TimeStamps" e
WHERE
	e."TimestampTZ3" = :ins



