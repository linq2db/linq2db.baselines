﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			1 as c1
	) t2
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			LIMIT :take
		) d ON 1=1

