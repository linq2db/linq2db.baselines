BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
		INNER JOIN (
			SELECT
				"t1"."ChildID"
			FROM
				"Child" "t1"
			GROUP BY
				"t1"."ChildID"
		) "cg" ON "c_1"."ChildID" = "cg"."ChildID"
WHERE
	("p"."ParentID" > 1 OR "p"."ParentID" > 0) AND ("p"."ParentID" IS NULL OR "p"."ParentID" <= 2147483647) AND
	("c_1"."ParentID" IS NULL OR "c_1"."ParentID" <= 2147483647)

