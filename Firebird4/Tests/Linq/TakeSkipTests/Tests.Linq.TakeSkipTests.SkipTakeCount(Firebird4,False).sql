BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	(
		SELECT FIRST 5 SKIP 2
			*
		FROM
			"Child" "t1"
	) "t2"

