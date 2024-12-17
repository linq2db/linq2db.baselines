BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"t1"."ParentID" = "c_1"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "t1"

