BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ QB_NAME(qb) FULL(t1.c_1@qb) HASH(t1.c_1@qb) PARALLEL(2) NO_UNNEST(qb) */
	t."PersonID",
	t."Diagnosis"
FROM
	(
		SELECT
			c_1."ParentID"
		FROM
			"Parent" p,
			"Child" c_1
	) t1
		INNER JOIN "Patient" t ON t1."ParentID" = t."PersonID"

