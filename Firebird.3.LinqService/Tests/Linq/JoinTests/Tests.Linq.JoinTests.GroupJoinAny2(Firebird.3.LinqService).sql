BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "t1_1"
			WHERE
				"t1"."ParentID" = "t1_1"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "t1"

