BeforeExecute
-- Firebird.4 Firebird4

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

