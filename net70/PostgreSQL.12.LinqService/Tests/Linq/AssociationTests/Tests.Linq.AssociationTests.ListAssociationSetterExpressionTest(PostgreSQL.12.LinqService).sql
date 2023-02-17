BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_ListAssociationSetterExpressionTestClass"."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID"
				FROM
					"Parent" t1
				LIMIT :take
			) t2
	) "lw_ListAssociationSetterExpressionTestClass"
		INNER JOIN "Child" detail ON "lw_ListAssociationSetterExpressionTestClass"."ParentID" = detail."ParentID"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" t1
LIMIT :take

