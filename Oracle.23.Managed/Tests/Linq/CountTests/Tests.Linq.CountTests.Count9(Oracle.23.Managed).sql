BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" p
		LEFT JOIN "Parent" a_Parent ON p."ParentID" = a_Parent."ParentID" AND p."ParentID" IS NOT NULL
WHERE
	a_Parent."ParentID" = 1 AND a_Parent."ParentID" IS NOT NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID" AND ch."ParentID" IS NOT NULL

