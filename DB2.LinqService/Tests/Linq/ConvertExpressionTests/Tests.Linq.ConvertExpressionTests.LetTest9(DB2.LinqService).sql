BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "c_1"."ParentID" ORDER BY "c_1"."ChildID") as "rn"
			FROM
				"Child" "c_1"
		) "t1" ON "t1"."ParentID" = "p"."ParentID" AND "t1"."rn" <= 1
FETCH NEXT 10 ROWS ONLY

