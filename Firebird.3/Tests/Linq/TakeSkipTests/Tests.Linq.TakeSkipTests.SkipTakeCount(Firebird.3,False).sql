BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Child" "t1"
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) "t2"

