﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
LIMIT :take

