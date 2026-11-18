-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Id_1 Int32
SET     @Id_1 = 11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT :Id AS "Id" FROM sys.dual
			UNION ALL
			SELECT :Id_1 FROM sys.dual) r ON r."Id" = p."PersonID"

