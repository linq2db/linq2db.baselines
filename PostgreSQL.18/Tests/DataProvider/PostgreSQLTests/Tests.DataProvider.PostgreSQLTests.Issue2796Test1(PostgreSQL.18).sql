-- PostgreSQL.18 PostgreSQL
DECLARE @RangeMappedAsDateTimeOffset TimestampTzRange -- Object
SET     @RangeMappedAsDateTimeOffset = NULL
DECLARE @RangeMappedAsDateTime TimestampTzRange -- Object
SET     @RangeMappedAsDateTime = [02/29/2020 17:54:55,03/01/2020 17:54:55]

INSERT INTO test
(
	"RangeMappedAsDateTimeOffset",
	"RangeMappedAsDateTime"
)
VALUES
(
	:RangeMappedAsDateTimeOffset,
	:RangeMappedAsDateTime
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."RangeMappedAsDateTimeOffset",
	t1."RangeMappedAsDateTime"
FROM
	test t1
LIMIT 2

