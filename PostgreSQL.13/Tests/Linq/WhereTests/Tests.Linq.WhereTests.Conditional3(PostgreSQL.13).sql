﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	CASE
		WHEN p."ParentID" = 1 THEN False
		ELSE True
	END

