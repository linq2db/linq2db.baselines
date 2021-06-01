BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	l."ParentID"
FROM
	"Child" l
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	1
FROM
	"Parent" sep

