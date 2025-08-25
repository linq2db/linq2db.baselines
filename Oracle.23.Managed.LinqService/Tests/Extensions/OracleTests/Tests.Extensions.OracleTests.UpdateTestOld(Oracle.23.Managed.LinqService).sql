BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

UPDATE /*+ ALL_ROWS FIRST_ROWS(10) */
	"Child" c_1
SET
	"ChildID" = c_1."ChildID" * 2
WHERE
	c_1."ParentID" < -1111

