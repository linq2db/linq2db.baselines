-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1 ("ParentID", "ChildID")
AS
(
	SELECT /*+ FULL(c_1) NOCACHE(c_1) */
		c_1."ParentID",
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ParentID" < -1111
)
SELECT /*+ FACT(c_2) ALL_ROWS FIRST_ROWS(10) */
	p."ParentID",
	p."ChildID"
FROM
	CTE_1 p
		CROSS JOIN "Child" c_2

