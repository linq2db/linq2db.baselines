BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 1

SELECT
	"key_data_result"."ParentID",
	"gjd_c"."ParentID",
	"gjd_c"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1
	) "key_data_result"
		INNER JOIN "Child" "gjd_c" ON "gjd_c"."ParentID" = "key_data_result"."ParentID" + @ParentID_1

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

