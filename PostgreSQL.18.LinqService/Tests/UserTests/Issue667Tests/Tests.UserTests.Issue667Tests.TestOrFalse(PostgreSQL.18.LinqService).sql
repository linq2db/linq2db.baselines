﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	f."ParentID" >= 1 OR f."ParentID" <= 4

