BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Person" "r"
		GROUP BY
			"r"."PersonID",
			"r"."PersonID"
	) "t1"

