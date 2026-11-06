-- Firebird.2.5 Firebird
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "t1"

