-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p2."ParentID",
	c_2."ChildIDCount"
FROM
	"Parent" p
		CROSS APPLY (
			SELECT
				COUNT(*) as "ChildIDCount"
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID"
			GROUP BY
				c_1."ChildID"
		) c_2
		INNER JOIN "Parent" p2 ON p."ParentID" = p2."ParentID"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Item1",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID" as "Item1"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."Item1" = d."ParentID"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

