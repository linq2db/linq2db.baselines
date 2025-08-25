BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ FULL(t) HASH(t) PARALLEL(2) */
	t."ParentID",
	t."ChildID"
FROM
	"Child" t

