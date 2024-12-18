BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."Day_2"
FROM
	(
		SELECT
			Extract(day from CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00' AS TimeStamp)) as "Day_1",
			CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00' AS TimeStamp) as "Day_2"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."Day_1" > 0 AND "p"."Day_1" IS NOT NULL

