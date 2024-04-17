BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "p"

