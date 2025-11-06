-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce(LISTAGG(CASE
		WHEN "t1"."NullableValue" IN ('A', 'B') THEN "t1"."NullableValue"
		ELSE NULL
	END, ', ') WITHIN GROUP (ORDER BY "t1"."NotNullableValue"), '')
FROM
	"SampleClass" "t1"

