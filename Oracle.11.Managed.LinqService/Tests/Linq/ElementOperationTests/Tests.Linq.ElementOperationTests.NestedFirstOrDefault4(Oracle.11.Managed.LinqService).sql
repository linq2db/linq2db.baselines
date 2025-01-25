BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	d_1."ParentID",
	d_1."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d."ParentID",
				d."ChildID"
			FROM
				"Child" d
			WHERE
				d."ParentID" > 0
		) d_1 ON m_1."ParentID" = d_1."ParentID"
ORDER BY
	d_1."ChildID"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID"
FROM
	"Parent" p

