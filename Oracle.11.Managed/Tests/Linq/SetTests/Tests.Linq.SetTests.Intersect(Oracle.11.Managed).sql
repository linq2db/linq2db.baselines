BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
INTERSECT
SELECT
	p."ParentID",
	p."ChildID"
FROM
	"Child" p
WHERE
	p."ParentID" = 3

