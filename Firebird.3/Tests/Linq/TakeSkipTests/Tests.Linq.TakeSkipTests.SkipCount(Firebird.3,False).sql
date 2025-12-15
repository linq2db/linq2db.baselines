-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		OFFSET 2 ROWS
	) "t2"

