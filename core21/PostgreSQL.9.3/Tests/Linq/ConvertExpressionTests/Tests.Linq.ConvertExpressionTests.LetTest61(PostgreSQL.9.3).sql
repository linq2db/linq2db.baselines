﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	key_data_result."ParentID",
	c_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT DISTINCT
			cp."ParentID"
		FROM
			"Parent" cp
		WHERE
			cp."ParentID" > 0
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID" AND c_1."ChildID" > -100
ORDER BY
	c_1."ChildID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	cp."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = cp."ParentID" AND c_1."ChildID" > -100
		)
			THEN True
		ELSE False
	END,
	(
		SELECT
			Count(*)
		FROM
			"Child" c_2
		WHERE
			c_2."ParentID" = cp."ParentID" AND c_2."ChildID" > -100
	),
	t1."First1"
FROM
	"Parent" cp
		LEFT JOIN LATERAL (
			SELECT
				c_3."ParentID" as "First1"
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" = cp."ParentID" AND c_3."ChildID" > -100 AND
				c_3."ParentID" > 0
			ORDER BY
				c_3."ChildID"
			LIMIT :take
		) t1 ON 1=1
WHERE
	cp."ParentID" > 0

