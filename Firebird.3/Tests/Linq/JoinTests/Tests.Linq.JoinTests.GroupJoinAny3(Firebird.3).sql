BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"p"."ParentID" = "c_1"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "p"

