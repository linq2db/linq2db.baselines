-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
	) "t1"

