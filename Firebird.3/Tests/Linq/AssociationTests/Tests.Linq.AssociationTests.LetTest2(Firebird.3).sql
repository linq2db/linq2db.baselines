BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"

