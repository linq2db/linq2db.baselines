-- Oracle.11.Managed Oracle11
SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON d."ParentID" = m_1."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	p."ParentID"
FROM
	"Parent" p

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

