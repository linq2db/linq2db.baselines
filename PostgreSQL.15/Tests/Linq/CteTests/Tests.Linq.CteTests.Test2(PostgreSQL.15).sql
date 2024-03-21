﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH RECURSIVE "CTE1_" ("ParentID")
AS
(
	SELECT
		c_1."ParentID"
	FROM
		"Child" c_1
	WHERE
		c_1."ParentID" > 1
),
"LATEST" ("ParentID", "ChildID")
AS
(
	SELECT
		c4."ParentID",
		c4."ChildID"
	FROM
		"Child" c4
	WHERE
		Cast(Floor(Cast(c4."ParentID" as decimal) % 2) as Int) = 0
),
"CTE2_" ("ParentID")
AS
(
	SELECT
		p."ParentID"
	FROM
		"Parent" p
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				"CTE1_" c_2
			WHERE
				c_2."ParentID" = p."ParentID"
		)
),
"CTE3_" ("ParentID", "Value1")
AS
(
	SELECT
		p_1."ParentID",
		p_1."Value1"
	FROM
		"Parent" p_1
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				"CTE2_" c_3
			WHERE
				c_3."ParentID" = p_1."ParentID"
		)
)
SELECT
	c3."ParentID",
	c3."Value1"
FROM
	"CTE2_" t1
		INNER JOIN "CTE1_" c_4 ON t1."ParentID" = c_4."ParentID"
		INNER JOIN "CTE2_" c2 ON t1."ParentID" = c2."ParentID"
		INNER JOIN "CTE3_" c3 ON t1."ParentID" = c3."ParentID"
		INNER JOIN "LATEST" c4_1 ON c4_1."ParentID" = c3."ParentID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c3."ParentID",
	c3."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		INNER JOIN "Parent" c2 ON p."ParentID" = c2."ParentID"
		INNER JOIN "Parent" c3 ON p."ParentID" = c3."ParentID"
		INNER JOIN "Child" c4 ON c4."ParentID" = c3."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_2
		WHERE
			c_2."ParentID" > 1 AND c_2."ParentID" = p."ParentID"
	) AND
	c_1."ParentID" > 1 AND
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_3
		WHERE
			c_3."ParentID" > 1 AND c_3."ParentID" = c2."ParentID"
	) AND
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p_1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Child" c_4
				WHERE
					c_4."ParentID" > 1 AND c_4."ParentID" = p_1."ParentID"
			) AND
			p_1."ParentID" = c3."ParentID"
	) AND
	Cast(Floor(Cast(c4."ParentID" as decimal) % 2) as Int) = 0

