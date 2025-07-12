BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Child" p
		INNER JOIN "Parent" a_Parent ON p."ParentID" = a_Parent."ParentID"
WHERE
	a_Parent."ParentID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID"

