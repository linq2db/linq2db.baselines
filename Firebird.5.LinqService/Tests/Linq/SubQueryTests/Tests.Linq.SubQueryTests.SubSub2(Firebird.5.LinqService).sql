BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			"a_Children"."ParentID" + 1
		FROM
			"Child" "a_Children"
		WHERE
			"p1"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" + 1 < "p1"."ParentID" + 2
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p1"
WHERE
	"p1"."ParentID" > -1 AND "p1"."ParentID" > -2

