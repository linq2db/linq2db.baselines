BeforeExecute
-- Firebird

SELECT 
	"key_data_result"."ParentID", 
	"key_data_result"."Value1", 
	"ch"."ParentID", 
	"ch"."ChildID"
FROM
	( 
		SELECT DISTINCT
			"p"."ParentID", 
			"p"."Value1"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1
	) "key_data_result"
		INNER JOIN "Child" "ch" ON "ch"."ParentID" = "key_data_result"."ParentID"

BeforeExecute
-- Firebird

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	), 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

