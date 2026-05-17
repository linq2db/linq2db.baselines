-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "t1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t2"
	)
FROM SYSIBM.SYSDUMMY1

