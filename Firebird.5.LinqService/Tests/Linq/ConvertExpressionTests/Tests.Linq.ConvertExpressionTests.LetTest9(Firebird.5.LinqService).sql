BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			(
				SELECT
					"p"."ParentID",
					"p"."Value1"
				FROM
					"Parent" "p"
				FETCH NEXT @take ROWS ONLY
			) "t1"
	) "key_data_result"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "key_data_result"."ParentID"
ORDER BY
	"c_1"."ChildID"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
FETCH NEXT @take ROWS ONLY

