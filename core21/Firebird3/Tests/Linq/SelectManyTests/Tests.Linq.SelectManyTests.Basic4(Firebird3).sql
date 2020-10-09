BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t2"."c1"
FROM
	"Parent" "cp"
		INNER JOIN ( 
			SELECT 
				"t1"."ParentID" + 1 as "c1"
			FROM
				"Child" "t1"
		) "t2" ON "cp"."ParentID" = "t2"."c1"

