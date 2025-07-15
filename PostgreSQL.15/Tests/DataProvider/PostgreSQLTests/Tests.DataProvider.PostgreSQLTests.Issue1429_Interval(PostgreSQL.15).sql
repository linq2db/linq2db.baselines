BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxId

