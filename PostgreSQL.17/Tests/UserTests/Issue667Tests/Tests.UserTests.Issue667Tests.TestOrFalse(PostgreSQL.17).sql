﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	(f."ParentID" >= 1 OR f."ParentID" <= 4)

