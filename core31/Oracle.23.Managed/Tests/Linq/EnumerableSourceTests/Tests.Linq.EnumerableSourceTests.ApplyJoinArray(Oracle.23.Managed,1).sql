BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @doe Varchar2(3) -- String
SET     @doe = 'Doe'

SELECT
	t1."item"
FROM
	"Person" p
		CROSS APPLY (
			SELECT p."FirstName" AS "item" FROM sys.dual
			UNION ALL
			SELECT p."LastName" FROM sys.dual
			UNION ALL
			SELECT 'John' FROM sys.dual
			UNION ALL
			SELECT :doe FROM sys.dual) t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @doe Varchar2(4) -- String
SET     @doe = 'Doe1'

SELECT
	t1."item"
FROM
	"Person" p
		CROSS APPLY (
			SELECT p."FirstName" AS "item" FROM sys.dual
			UNION ALL
			SELECT p."LastName" FROM sys.dual
			UNION ALL
			SELECT 'John' FROM sys.dual
			UNION ALL
			SELECT :doe FROM sys.dual) t1

