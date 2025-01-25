BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT ("x"."ChildID" = 11 AND "x"."GrandChildID" = 777)
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT ("x"."GrandChildID" = 777 AND "x"."ChildID" = 11)
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

