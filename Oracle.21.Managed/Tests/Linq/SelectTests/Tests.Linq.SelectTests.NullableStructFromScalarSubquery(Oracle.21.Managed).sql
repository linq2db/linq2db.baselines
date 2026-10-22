-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	m_1."ParentID",
	t1."ChildID",
	t1."ParentID"
FROM
	"Parent" m_1
		OUTER APPLY (
			SELECT
				c_1."ChildID",
				c_1."ParentID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = m_1."ParentID"
			ORDER BY
				c_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

