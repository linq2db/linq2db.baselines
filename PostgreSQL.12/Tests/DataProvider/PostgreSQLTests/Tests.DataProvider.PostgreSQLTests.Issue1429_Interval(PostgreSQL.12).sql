BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @timeDataType Interval -- Object
SET     @timeDataType = 00:01:00
DECLARE @intervalDataType Interval -- Object
SET     @intervalDataType = NpgsqlTypes.NpgsqlInterval

INSERT INTO "AllTypes"
(
	"timeDataType",
	"intervalDataType",
	"intervalDataType2"
)
VALUES
(
	:timeDataType,
	:intervalDataType,
	:timeDataType
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @intervalDataType Interval -- Object
SET     @intervalDataType = NpgsqlTypes.NpgsqlInterval
DECLARE @intervalDataType2 Interval -- Object
SET     @intervalDataType2 = 3.00:00:00

INSERT INTO "AllTypes"
(
	"intervalDataType",
	"intervalDataType2"
)
VALUES
(
	:intervalDataType,
	:intervalDataType2
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxId

