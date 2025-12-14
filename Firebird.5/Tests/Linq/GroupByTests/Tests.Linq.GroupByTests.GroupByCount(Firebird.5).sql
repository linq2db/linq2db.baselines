-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
		GROUP BY
			"gr"."ParentID"
	) "t1"

