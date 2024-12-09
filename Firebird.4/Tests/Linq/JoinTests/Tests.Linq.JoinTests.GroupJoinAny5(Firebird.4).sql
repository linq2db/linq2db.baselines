BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN EXISTS(
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

