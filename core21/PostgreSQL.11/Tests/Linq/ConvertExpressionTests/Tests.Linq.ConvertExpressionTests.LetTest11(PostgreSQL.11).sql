BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
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
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_2."ParentID",
				c_2."ChildID"
			FROM
				"Child" c_2
			WHERE
				c_2."ChildID" > -100
			LIMIT :take_1
		) t2 ON 1=1

