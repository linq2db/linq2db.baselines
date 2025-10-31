-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					a_Parent."ParentID"
				FROM
					"Child" t1
						LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
				WHERE
					ROWNUM <= 1
			) t2
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
WHERE
	ROWNUM <= 1

