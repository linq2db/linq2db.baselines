BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT
	CAST(NOT EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" <= @n
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

