﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
LIMIT :take

