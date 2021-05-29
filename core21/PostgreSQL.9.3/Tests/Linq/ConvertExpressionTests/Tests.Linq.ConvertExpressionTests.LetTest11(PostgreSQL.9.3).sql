BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" > 0
ORDER BY
	c_1."ParentID"
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" > -100
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 0
			ORDER BY
				c_1."ParentID"
			LIMIT :take
		) t1 ON 1=1

