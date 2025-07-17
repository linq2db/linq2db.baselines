BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
LIMIT :take

