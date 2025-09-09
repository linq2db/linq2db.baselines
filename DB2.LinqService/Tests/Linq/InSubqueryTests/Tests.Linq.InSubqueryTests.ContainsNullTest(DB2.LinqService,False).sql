BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Parent" "c_1"
		WHERE
			"c_1"."Value1" IS NULL
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

