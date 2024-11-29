BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			LISTAGG(RTrim(Char("a_Children"."ChildID")), ', ')
		FROM
			"Child" "a_Children"
		WHERE
			"s"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "s"

