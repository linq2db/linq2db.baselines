-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			n."ParentID"
		FROM
			"Parent" n
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			n."ParentID"
		FROM
			"Parent" n
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			n."ParentID"
		FROM
			"Parent" n
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	n."ParentID"
FROM
	"Parent" n

