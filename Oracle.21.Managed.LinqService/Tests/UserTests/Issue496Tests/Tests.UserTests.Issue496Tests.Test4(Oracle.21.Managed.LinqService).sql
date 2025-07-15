BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ChildID",
	d."ParentID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON CAST(m_1."ParentID" AS Number(19)) = d."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID"
FROM
	"Parent" p

