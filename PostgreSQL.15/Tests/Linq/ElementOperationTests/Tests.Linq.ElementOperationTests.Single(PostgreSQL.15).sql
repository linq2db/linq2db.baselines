﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1
LIMIT :take

