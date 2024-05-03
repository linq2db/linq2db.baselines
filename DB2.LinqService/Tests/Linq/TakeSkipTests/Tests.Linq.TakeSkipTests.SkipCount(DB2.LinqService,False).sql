BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					ROW_NUMBER() OVER () as RN
				FROM
					"Child" "t1"
			) "t2"
		WHERE
			"t2".RN > 2
	) "t3"

