BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ DRIVING_SITE(p) DRIVING_SITE(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

