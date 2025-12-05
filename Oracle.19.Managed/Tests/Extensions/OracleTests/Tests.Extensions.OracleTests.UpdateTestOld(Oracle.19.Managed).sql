-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE /*+ ALL_ROWS FIRST_ROWS(10) */
	"Child" c_1
SET
	"ChildID" = c_1."ChildID" * 2
WHERE
	c_1."ParentID" < -1111

