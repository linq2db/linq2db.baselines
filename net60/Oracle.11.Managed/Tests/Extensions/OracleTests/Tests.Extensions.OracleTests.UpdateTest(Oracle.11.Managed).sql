BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE /*+ ALL_ROWS FIRST_ROWS(10) */
	"Child"
SET
	"Child"."ChildID" = "Child"."ChildID" * 2
WHERE
	"Child"."ParentID" < -1111

