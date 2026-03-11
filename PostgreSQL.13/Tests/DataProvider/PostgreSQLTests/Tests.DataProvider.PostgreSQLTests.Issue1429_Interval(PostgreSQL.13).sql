-- PostgreSQL.13 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @timeDataType Interval -- Object
SET     @timeDataType = 00:01:00
DECLARE @value Interval -- Object
SET     @value = NpgsqlTypes.NpgsqlInterval

INSERT INTO "AllTypes"
(
	"timeDataType",
	"intervalDataType",
	"intervalDataType2"
)
VALUES
(
	:timeDataType,
	:value,
	:timeDataType
)

-- PostgreSQL.13 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = NpgsqlTypes.NpgsqlInterval
DECLARE @intervalDataType2 Interval -- Object
SET     @intervalDataType2 = 3.00:00:00

INSERT INTO "AllTypes"
(
	"intervalDataType",
	"intervalDataType2"
)
VALUES
(
	:value,
	:intervalDataType2
)

-- PostgreSQL.13 PostgreSQL
DECLARE @timeDataType Interval -- Object
SET     @timeDataType = 3.00:00:00

INSERT INTO "AllTypes"
(
	"timeDataType"
)
VALUES
(
	:timeDataType
)

-- PostgreSQL.13 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxId

