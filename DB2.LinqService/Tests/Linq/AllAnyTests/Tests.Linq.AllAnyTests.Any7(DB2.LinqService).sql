BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

