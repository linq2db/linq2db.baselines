BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_ListAssociationSetterExpressionTestClass"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t2"."ParentID"
		FROM
			(
				SELECT FIRST @take
					"t1"."ParentID"
				FROM
					"Parent" "t1"
			) "t2"
	) "lw_ListAssociationSetterExpressionTestClass"
		INNER JOIN "Child" "detail" ON "lw_ListAssociationSetterExpressionTestClass"."ParentID" = "detail"."ParentID"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."ParentID"
FROM
	"Parent" "t1"

