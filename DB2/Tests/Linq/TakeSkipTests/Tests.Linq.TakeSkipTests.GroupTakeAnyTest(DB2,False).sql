BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"group_1"."Value" as "Key_1"
				FROM
					"TakeSkipClass" "group_1"
				GROUP BY
					"group_1"."Value"
				HAVING
					COUNT(*) > 1
			) "item_1"
		FETCH NEXT 1 ROWS ONLY
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

