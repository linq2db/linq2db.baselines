-- DB2 DB2.LUW DB2LUW
SELECT
	"c_1"."ChildID",
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1"
		LEFT JOIN (
			SELECT
				"g_1"."ParentID",
				ROW_NUMBER() OVER (PARTITION BY "g_1"."ChildID" ORDER BY "g_1"."ChildID") as "rn",
				"g_1"."ChildID"
			FROM
				"GrandChild" "g_1"
		) "a_LinkedParent"
			INNER JOIN "Parent" "p" ON "a_LinkedParent"."ParentID" = "p"."ParentID"
		ON "a_LinkedParent"."ChildID" = "c_1"."ChildID" AND "a_LinkedParent"."rn" = 1

