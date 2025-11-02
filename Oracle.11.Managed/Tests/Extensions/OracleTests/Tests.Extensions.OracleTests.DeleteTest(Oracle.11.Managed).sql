-- Oracle.11.Managed Oracle11

DELETE /*+ FULL(c_1) ALL_ROWS FIRST_ROWS(10) */ FROM
	"Child" c_1
WHERE
	c_1."ParentID" < -1111

