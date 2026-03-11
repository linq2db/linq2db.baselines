-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "r"
				LEFT JOIN "Child" "a_Child" ON "r"."ParentID" = "a_Child"."ParentID" AND "r"."ChildID" = "a_Child"."ChildID"
				LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = 1
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

