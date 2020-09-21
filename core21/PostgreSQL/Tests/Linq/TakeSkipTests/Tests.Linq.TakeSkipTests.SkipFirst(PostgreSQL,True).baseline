BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
LIMIT :take OFFSET :skip 

