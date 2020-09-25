BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Parent" p1
				WHERE
					(p1."Value1" IS NULL AND p."Value1" IS NULL OR p1."Value1" = p."Value1")
				LIMIT :take
			) t1
	)

