BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE WHEN (NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT (("x"."ChildID" IS NOT NULL AND "x"."ChildID" = 11) AND ("x"."GrandChildID" IS NOT NULL AND "x"."GrandChildID" = 777))
	)) THEN 1 ELSE 0 END
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE WHEN (NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT (("x"."GrandChildID" IS NOT NULL AND "x"."GrandChildID" = 777) AND ("x"."ChildID" IS NOT NULL AND "x"."ChildID" = 11))
	)) THEN 1 ELSE 0 END
FROM SYSIBM.SYSDUMMY1

