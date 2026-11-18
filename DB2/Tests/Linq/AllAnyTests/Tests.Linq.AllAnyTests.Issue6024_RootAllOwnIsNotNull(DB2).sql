-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" IS NOT NULL AND "p"."Value1" <= 0
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

