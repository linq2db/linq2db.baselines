BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	(
		SELECT FIRST 5
			*
		FROM
			"Child" "t1"
	) "t2"

