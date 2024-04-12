BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	(
		SELECT SKIP 2
			*
		FROM
			"Child" "t1"
	) "t2"

