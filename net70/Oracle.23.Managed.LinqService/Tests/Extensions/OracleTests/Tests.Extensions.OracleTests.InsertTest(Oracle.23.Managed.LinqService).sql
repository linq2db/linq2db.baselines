BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT /*+ FULL(c_1) ALL_ROWS FIRST_ROWS(10) */ INTO "Child"
(
	"ChildID"
)
SELECT
	c_1."ChildID" * 2
FROM
	"Child" c_1
WHERE
	c_1."ParentID" < -1111

