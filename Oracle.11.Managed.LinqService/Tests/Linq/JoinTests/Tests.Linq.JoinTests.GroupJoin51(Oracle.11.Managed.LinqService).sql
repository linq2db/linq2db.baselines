BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
				INNER JOIN (
					SELECT
						ch."ParentID",
						ROW_NUMBER() OVER (PARTITION BY ch."ParentID" ORDER BY ch."ChildID" DESC) as "rn"
					FROM
						"Child" ch
				) t1 ON p."ParentID" = t1."ParentID" AND t1."rn" <= 1
		WHERE
			p."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		INNER JOIN (
			SELECT
				ch."ParentID",
				ch."ChildID",
				ROW_NUMBER() OVER (PARTITION BY ch."ParentID" ORDER BY ch."ChildID" DESC) as "rn"
			FROM
				"Child" ch
		) t1 ON p."ParentID" = t1."ParentID" AND t1."rn" <= 1
WHERE
	p."ParentID" = 1

