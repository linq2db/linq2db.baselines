-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "t1"

