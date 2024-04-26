BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"c_1"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_Parent"."ParentID", "a_Parent"."Value1" ORDER BY ("c_1"."ChildID" * "c_1"."ParentID") DESC) as "rn",
				"a_Parent"."ParentID",
				"a_Parent"."Value1"
			FROM
				"Child" "c_1"
					LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
		) "t1" ON "t1"."ParentID" = "p"."ParentID" AND ("t1"."Value1" = "p"."Value1" OR "t1"."Value1" IS NULL AND "p"."Value1" IS NULL) AND "t1"."rn" <= 1

