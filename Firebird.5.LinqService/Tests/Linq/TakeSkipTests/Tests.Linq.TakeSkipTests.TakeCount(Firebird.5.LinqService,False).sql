BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		FETCH NEXT 5 ROWS ONLY
	) "t2"

