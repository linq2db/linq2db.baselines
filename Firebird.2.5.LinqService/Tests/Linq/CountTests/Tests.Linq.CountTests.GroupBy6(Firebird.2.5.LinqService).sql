BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Child" "t1"
		GROUP BY
			"t1"."ParentID"
	) "t2"

