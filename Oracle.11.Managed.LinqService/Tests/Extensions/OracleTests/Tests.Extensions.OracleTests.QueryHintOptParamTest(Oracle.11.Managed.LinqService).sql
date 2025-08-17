BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ OPT_PARAM('star_transformation_enabled' 'true') */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

