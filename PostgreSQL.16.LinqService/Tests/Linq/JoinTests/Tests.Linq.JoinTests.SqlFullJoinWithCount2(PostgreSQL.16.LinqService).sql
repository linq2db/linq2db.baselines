﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	CASE
		WHEN COUNT(t1."ParentID") = COUNT(right_1."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
			THEN True
		ELSE False
	END
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id
	) t1
		FULL JOIN "Parent" right_1 ON right_1."ParentID" = t1."ParentID"
LIMIT 2

