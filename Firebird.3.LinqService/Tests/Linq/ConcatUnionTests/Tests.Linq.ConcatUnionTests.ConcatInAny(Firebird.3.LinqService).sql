BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN  EXISTS (
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
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

