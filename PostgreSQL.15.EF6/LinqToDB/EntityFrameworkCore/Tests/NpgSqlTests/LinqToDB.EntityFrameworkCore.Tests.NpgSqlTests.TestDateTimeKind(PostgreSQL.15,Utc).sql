--  PostgreSQL.9.3 PostgreSQL
DECLARE @dt Timestamp -- DateTime2
SET     @dt = '2024-11-18 18:50:53.135'::timestamp

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



--  PostgreSQL.9.3 PostgreSQL
DECLARE @ldt Timestamp -- DateTime2
SET     @ldt = 11/18/2024 18:50:53

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



--  PostgreSQL.9.3 PostgreSQL
DECLARE @dt TimestampTz -- DateTime
SET     @dt = '2024-11-18 18:50:53.135'::timestamp

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



--  PostgreSQL.9.3 PostgreSQL
DECLARE @dto TimestampTz -- DateTime
SET     @dto = '2024-11-18T18:50:53.1356005+00:00'

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



--  PostgreSQL.9.3 PostgreSQL
DECLARE @ins TimestampTz -- DateTime
SET     @ins = 2024-11-18T18:50:53Z

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



