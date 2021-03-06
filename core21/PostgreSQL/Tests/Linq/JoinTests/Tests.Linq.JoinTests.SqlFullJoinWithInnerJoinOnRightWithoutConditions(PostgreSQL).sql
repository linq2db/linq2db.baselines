﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

SELECT
	left_3."ParentID",
	left_3."Value1",
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" left_3
		INNER JOIN "Parent" left2 ON left_3."Value1" = left2."Value1" + 2
		FULL JOIN (
			SELECT
				p."Value1",
				p."ParentID"
			FROM
				"Parent" p
			WHERE
				p."ParentID" <> :id1
		) t1 ON (t1."Value1" + 2 IS NOT NULL AND t1."Value1" + 2 = left_3."Value1")
ORDER BY
	left_3."ParentID"

