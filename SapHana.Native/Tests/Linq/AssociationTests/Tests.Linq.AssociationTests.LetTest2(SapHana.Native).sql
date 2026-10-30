-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
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

