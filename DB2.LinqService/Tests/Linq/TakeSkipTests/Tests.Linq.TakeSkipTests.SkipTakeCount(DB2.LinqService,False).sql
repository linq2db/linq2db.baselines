BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) "t2"

