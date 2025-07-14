BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			"item_1"."Value"
		FROM
			"TakeSkipClass" "item_1"
		GROUP BY
			"item_1"."Value"
		HAVING
			COUNT(*) > 1
		FETCH NEXT 1 ROWS ONLY
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

