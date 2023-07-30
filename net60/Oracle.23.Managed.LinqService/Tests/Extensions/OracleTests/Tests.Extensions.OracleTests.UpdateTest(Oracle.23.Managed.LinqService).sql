BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE /*+ ALL_ROWS FIRST_ROWS(10) */
	"Child"
SET
	"Child"."ChildID" = "Child"."ChildID" * 2
WHERE
	"Child"."ParentID" < -1111

