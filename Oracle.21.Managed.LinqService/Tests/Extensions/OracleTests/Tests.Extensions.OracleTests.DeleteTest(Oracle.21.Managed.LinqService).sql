BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE /*+ FULL(c_1) ALL_ROWS FIRST_ROWS(10) */ FROM
	"Child" c_1
WHERE
	c_1."ParentID" < -1111

