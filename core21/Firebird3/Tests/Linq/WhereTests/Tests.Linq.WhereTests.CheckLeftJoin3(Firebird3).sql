BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
		LEFT JOIN ( 
			SELECT 
				1 + "c_1"."ParentID" as "ch", 
				"c_1"."ChildID"
			FROM
				"GrandChild" "c_1"
			WHERE
				"c_1"."ParentID" > 0
		) "t1" ON "p"."ParentID" = "t1"."ch"
WHERE
	("t1"."ch" IS NULL AND "t1"."ChildID" IS NULL) AND
	("t1"."ch" IS NULL AND "t1"."ChildID" IS NULL)

