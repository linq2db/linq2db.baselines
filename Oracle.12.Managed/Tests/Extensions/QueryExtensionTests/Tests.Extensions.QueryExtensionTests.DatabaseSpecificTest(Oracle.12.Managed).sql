BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(t) HASH(t) PARALLEL(2) */
	t."ParentID",
	t."ChildID"
FROM
	"Child" t

