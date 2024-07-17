BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	entity1."FirstName",
	entity1."PersonID" as ID,
	entity1."LastName",
	entity1."MiddleName",
	entity1."Gender",
	t1."FirstName" as "FirstName_1",
	t1.ID as ID_1,
	t1."LastName" as "LastName_1",
	t1."MiddleName" as "MiddleName_1",
	t1."Gender" as "Gender_1"
FROM
	"Person" entity1
		OUTER APPLY (
			SELECT
				entity2."FirstName",
				entity2."PersonID" as ID,
				entity2."LastName",
				entity2."MiddleName",
				entity2."Gender"
			FROM
				"Person" entity2
			WHERE
				entity2."PersonID" = entity1."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) t1
FETCH NEXT 1 ROWS ONLY

