BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Child" "t1"
		FETCH NEXT 5 ROWS ONLY
	) "t2"

