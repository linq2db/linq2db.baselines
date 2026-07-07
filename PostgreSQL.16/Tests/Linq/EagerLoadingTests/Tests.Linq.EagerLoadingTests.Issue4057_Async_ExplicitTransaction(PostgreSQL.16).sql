-- PostgreSQL.16 PostgreSQL.15
-- Batch 1
SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3
		LIMIT 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- Batch 2
SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
LIMIT 1
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3
		LIMIT 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = 3
		LIMIT 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
LIMIT 1

