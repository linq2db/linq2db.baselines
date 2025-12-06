-- DB2 DB2.LUW DB2LUW

SELECT
	"p1"."ParentID",
	"p1"."ParentID",
	"p1"."Value1",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p1"
UNION
SELECT
	Coalesce("p2"."Value1", 0),
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	"t1"."cond",
	"t1"."cond",
	"t1"."ChildID"
FROM
	"Parent" "p2"
		LEFT JOIN (
			SELECT
				"a_Children"."ParentID" as "cond",
				"a_Children"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentID" ORDER BY "a_Children"."ChildID" DESC) as "rn"
			FROM
				"Child" "a_Children"
		) "t1" ON "p2"."ParentID" = "t1"."cond" AND "t1"."rn" <= 1

