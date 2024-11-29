BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Child" "t1"
		OFFSET 2 ROWS
	) "t2"

