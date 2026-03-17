-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		UNION ALL
		SELECT
			"p_1"."ParentID"
		FROM
			"Parent" "p_1"
	)
FROM rdb$database

