BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_Issue3975TestClass"."ParentID",
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
	) "lw_Issue3975TestClass"
		INNER JOIN "Child" detail ON "lw_Issue3975TestClass"."ParentID" = detail."ParentID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" t1
LIMIT :take

BeforeExecute
DisposeTransaction
