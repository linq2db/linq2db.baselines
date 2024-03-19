BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as ID,
	p."FirstName" as "id_1",
	p."LastName" as "Id_2",
	p."MiddleName" as "iD_3"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

