BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			1 = "c_1"."ParentID"
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

