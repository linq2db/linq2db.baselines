-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ QB_NAME(qb) NO_STAR_TRANSFORMATION(@qb) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

