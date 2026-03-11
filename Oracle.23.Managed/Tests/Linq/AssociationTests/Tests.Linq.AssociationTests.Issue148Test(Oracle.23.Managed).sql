-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	n."ParentID"
FROM
	"Parent" n

