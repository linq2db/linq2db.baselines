BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	d_1."Key_1",
	d_1."ToValue"
FROM
	(
		SELECT DISTINCT
			c_1."ParentID"
		FROM
			"Parent" c_1
	) m_1
		INNER JOIN (
			SELECT
				d."ParentID" as "Key_1",
				LISTAGG(CAST(d."ChildID" AS VarChar(255)), ', ') WITHIN GROUP (ORDER BY ROWNUM) as "ToValue"
			FROM
				"Child" d
			GROUP BY
				d."ParentID"
		) d_1 ON m_1."ParentID" = d_1."Key_1"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID"
FROM
	"Parent" c_1

