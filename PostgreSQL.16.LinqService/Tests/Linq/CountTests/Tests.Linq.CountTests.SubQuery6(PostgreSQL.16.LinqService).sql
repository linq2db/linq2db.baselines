﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "a_Children"
		WHERE
			p_1."ParentID" = "a_Children"."ParentID"
	)
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		LIMIT :take
	) p_1
ORDER BY
	p_1."ParentID" DESC

