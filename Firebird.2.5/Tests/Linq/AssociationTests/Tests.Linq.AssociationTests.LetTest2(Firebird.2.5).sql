BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"pp"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"pp"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "pp"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"pp"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"pp"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "pp"

