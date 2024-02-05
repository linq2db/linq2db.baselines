BeforeExecute
-- Oracle.11.Managed Oracle11

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
SELECT /*+ FACT(c_2) FIRST_ROWS(10) ALL_ROWS */
	p."ParentID",
	p."ChildID"
FROM
	CTE_1 p,
	"Child" c_2

