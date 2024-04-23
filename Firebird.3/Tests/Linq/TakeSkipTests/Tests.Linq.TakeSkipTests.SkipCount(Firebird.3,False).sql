BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		OFFSET 2 ROWS
	) "t2"

