BeforeExecute
-- Firebird3 Firebird

SELECT 
	"key_data_result"."ParentID", 
	"detail"."ChildID", 
	"detail"."ParentID"
FROM
	( 
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "key_data_result"
		INNER JOIN "Child" "detail" ON "key_data_result"."ParentID" = "detail"."ParentID"

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."ParentID"
FROM
	"Parent" "t1"

