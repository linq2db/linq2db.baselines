﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	Min(t1."ParentID")
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."ParentID"
		LIMIT :take
	) t1

