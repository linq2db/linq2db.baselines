BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST 5 SKIP 2
			*
		FROM
			"Child" "t1"
	) "t2"

