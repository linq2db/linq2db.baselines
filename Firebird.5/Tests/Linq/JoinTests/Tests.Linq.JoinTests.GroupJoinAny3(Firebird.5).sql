BeforeExecute
-- Firebird.5 Firebird4

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

