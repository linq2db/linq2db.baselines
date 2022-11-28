BeforeExecute
-- Oracle.11.Managed Oracle11

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

