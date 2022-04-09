BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT /* qb */
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
FOR SHARE OF t

