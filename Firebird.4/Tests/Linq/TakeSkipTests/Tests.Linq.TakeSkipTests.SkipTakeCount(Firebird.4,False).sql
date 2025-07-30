BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) "t2"

