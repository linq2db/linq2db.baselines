﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."ParentID"
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."ParentID"
LIMIT :take OFFSET :skip 

