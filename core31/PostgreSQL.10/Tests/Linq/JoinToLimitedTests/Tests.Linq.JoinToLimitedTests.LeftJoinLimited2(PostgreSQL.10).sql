BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	o."ParentID",
	o."Value1",
	t1.c_1,
	t1."ChildID"
FROM
	"Parent" o
		LEFT JOIN LATERAL (
			SELECT
				cg."ParentID" as c_1,
				cg."ChildID"
			FROM
				"Child" cg
			WHERE
				o."ParentID" = cg."ParentID"
			LIMIT :take
		) t1 ON 1=1

