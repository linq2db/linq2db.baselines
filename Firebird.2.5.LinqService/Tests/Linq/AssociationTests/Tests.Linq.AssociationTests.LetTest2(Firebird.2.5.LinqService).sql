BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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
-- Firebird.2.5 Firebird (asynchronously)

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

