BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."DateTimeValue2",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."SmallIntValue",
	"_"."IntValue",
	"_"."BigIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	(CASE
		WHEN "_"."BigIntValue" IN (2)
			THEN 1
		ELSE 0
	END = 0 OR CASE
		WHEN "_"."BigIntValue" IN (2)
			THEN 1
		ELSE 0
	END IS NULL)

