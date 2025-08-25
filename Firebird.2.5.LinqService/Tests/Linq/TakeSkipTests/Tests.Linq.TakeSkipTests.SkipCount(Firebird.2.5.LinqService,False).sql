BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP 2
			*
		FROM
			"Child" "t1"
	) "t2"

