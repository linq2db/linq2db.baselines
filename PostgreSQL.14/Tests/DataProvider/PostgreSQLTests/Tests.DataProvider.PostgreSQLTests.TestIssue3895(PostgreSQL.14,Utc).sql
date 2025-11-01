-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @dt Timestamp -- DateTime2
SET     @dt = '2020-02-29 17:54:55.123'::timestamp
DECLARE @dt_1 TimestampTz -- DateTime
SET     @dt_1 = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."ID",
	e."timestampDataType",
	e."timestampTZDataType"
FROM
	"AllTypes" e
WHERE
	e."timestampDataType" = :dt AND e."timestampTZDataType" = :dt_1

