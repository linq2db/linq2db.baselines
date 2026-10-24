-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Id_1 Int32
SET     @Id_1 = 21
DECLARE @Id_2 Int32
SET     @Id_2 = 22

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
			SELECT :Id_1 FROM sys.dual
			UNION ALL
			SELECT :Id_2 FROM sys.dual) r ON r."Id" = p."PersonID"

