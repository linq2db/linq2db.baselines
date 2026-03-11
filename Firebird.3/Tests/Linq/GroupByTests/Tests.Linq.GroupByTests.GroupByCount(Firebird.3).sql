-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
	) "t1"

