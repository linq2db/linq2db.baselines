BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
WHERE
	ROWNUM <= 3

