BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ QB_NAME(qb) FULL(c_1@qb) HASH(c_1@qb) PARALLEL(2) NO_UNNEST(qb) */
	t."PersonID",
	t."Diagnosis"
FROM
	"Parent" t1
		CROSS JOIN "Child" c_1
		INNER JOIN "Patient" t ON c_1."ParentID" = t."PersonID"

