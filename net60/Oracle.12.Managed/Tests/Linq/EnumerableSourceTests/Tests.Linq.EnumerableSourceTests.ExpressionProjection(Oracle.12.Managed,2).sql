﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 3
DECLARE @ID_1 Int32
SET     @ID_1 = 4

SELECT
	n."FirstName",
	n."PersonID"
FROM
	"Person" p
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", :ID AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 'Doe', :ID_1 FROM sys.dual) n ON p."PersonID" = n."PersonID"

