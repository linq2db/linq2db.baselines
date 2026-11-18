-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" IS NOT NULL AND "p"."Value1" > 1
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

