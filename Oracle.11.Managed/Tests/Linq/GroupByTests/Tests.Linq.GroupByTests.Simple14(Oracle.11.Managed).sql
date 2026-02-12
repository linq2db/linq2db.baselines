-- Oracle.11.Managed Oracle11

SELECT
	m_1."Item1",
	d_1."Key_1"
FROM
	(
		SELECT DISTINCT
			p."ParentID" as "Item1"
		FROM
			"Parent" p
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d."ParentID" as "Key_1"
			FROM
				"Child" d
		) d_1 ON m_1."Item1" = d_1."Key_1"

-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID"
FROM
	"Parent" p

