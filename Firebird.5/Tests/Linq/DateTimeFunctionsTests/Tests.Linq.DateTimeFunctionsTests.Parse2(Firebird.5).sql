BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"d"."Day_2"
FROM
	(
		SELECT
			Extract(day from CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-02-24 00:00:00' AS TimeStamp)) as "Day_1",
			CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-02-24 00:00:00' AS TimeStamp) as "Day_2"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	"d"."Day_1" > 0 AND "d"."Day_1" IS NOT NULL

