-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t2."Sum_1"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				SUM(CASE
					WHEN d."ParentID" IS NOT NULL THEN d."ParentID"
					ELSE -100
				END) as "Sum_1"
			FROM
				(
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) t1
					LEFT JOIN "Child" d ON p."ParentID" = d."ParentID"
		) t2

-- Oracle.21.Managed Oracle.Managed Oracle12

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

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

