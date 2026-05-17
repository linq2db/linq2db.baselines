-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"TestTimestampDatePartTable" "s"
WHERE
	CAST("s"."LastModified" AS Date) = CAST(TIMESTAMP '2020-02-29 17:54:55.1231' AS Date)

