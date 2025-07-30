BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ChildID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"p"."ParentID" = "a_GrandChildren"."ParentID" AND "p"."ChildID" = "a_GrandChildren"."ChildID"
	) AS smallint)
FROM
	"Child" "p"
UNION ALL
SELECT
	"p_1"."ChildID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "a_GrandChildren_1"
		WHERE
			"p_1"."ParentID" = "a_GrandChildren_1"."ParentID" AND
			"p_1"."ChildID" = "a_GrandChildren_1"."ChildID"
	) AS smallint)
FROM
	"Child" "p_1"

