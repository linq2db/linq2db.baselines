-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT /* qb */
	t."PersonID",
	t."Diagnosis"
FROM
	"Parent" t1
		CROSS JOIN "Child" c_1
		INNER JOIN "Patient" t ON c_1."ParentID" = t."PersonID"
FOR SHARE OF t

