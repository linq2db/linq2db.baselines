BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Parent" p
				WHERE
					p."ParentID" = 1 AND ROWNUM <= 2
			) t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1 AND ROWNUM <= 2

