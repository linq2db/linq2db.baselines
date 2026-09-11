-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

