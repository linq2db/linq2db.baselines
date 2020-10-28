BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" ("ParentID")
AS
(
	SELECT
		c_1."ParentID"
	FROM
		"Child" c_1
	WHERE
		c_1."ParentID" > 1
),
"LAST0" ("ParentID")
AS
(
	SELECT
		c4."ParentID"
	FROM
		"Child" c4
	WHERE
		c4."ParentID" % 2 = 0
),
"CTE2_" ("ParentID")
AS
(
	SELECT
		p."ParentID"
	FROM
		"Parent" p
	WHERE
		(EXISTS(
			SELECT
				*
			FROM
				"CTE1_" c_2
			WHERE
				c_2."ParentID" = p."ParentID"
		))
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
		(EXISTS(
			SELECT
				*
			FROM
				"CTE2_" c_3
			WHERE
				c_3."ParentID" = p_1."ParentID"
		))
)
SELECT
	c3."ParentID",
	c3."Value1"
FROM
	"CTE2_" p_2
		INNER JOIN "CTE1_" c_4 ON p_2."ParentID" = c_4."ParentID"
		INNER JOIN "CTE2_" c2 ON p_2."ParentID" = c2."ParentID"
		INNER JOIN "CTE3_" c3 ON p_2."ParentID" = c3."ParentID"
		INNER JOIN "LAST0" c4_1 ON c4_1."ParentID" = c3."ParentID"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	"Parent" p_2
		INNER JOIN "Child" c_1 ON p_2."ParentID" = c_1."ParentID"
		INNER JOIN "Parent" p ON p_2."ParentID" = p."ParentID"
		INNER JOIN "Parent" p_1 ON p_2."ParentID" = p_1."ParentID"
		INNER JOIN "Child" c4 ON c4."ParentID" = p_1."ParentID"
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			"Parent" p_3
		WHERE
			(EXISTS(
				SELECT
					*
				FROM
					"Child" c_2
				WHERE
					c_2."ParentID" > 1 AND c_2."ParentID" = p_3."ParentID"
			)) AND
			p_3."ParentID" = p_1."ParentID"
	)) AND
	c4."ParentID" % 2 = 0 AND
	(EXISTS(
		SELECT
			*
		FROM
			"Child" c_3
		WHERE
			c_3."ParentID" > 1 AND c_3."ParentID" = p."ParentID"
	)) AND
	c_1."ParentID" > 1 AND
	(EXISTS(
		SELECT
			*
		FROM
			"Child" c_4
		WHERE
			c_4."ParentID" > 1 AND c_4."ParentID" = p_2."ParentID"
	))

