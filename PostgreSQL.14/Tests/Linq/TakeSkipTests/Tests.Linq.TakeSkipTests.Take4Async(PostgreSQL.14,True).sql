-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" >= 0 AND ch."ChildID" <= 100
LIMIT :take

