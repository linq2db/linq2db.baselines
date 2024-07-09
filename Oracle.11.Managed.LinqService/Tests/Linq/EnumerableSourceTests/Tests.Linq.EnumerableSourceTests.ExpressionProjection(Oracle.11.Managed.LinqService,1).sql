﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	n."FirstName",
	n."PersonID"
FROM
	"Person" t1
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", :ID AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 'Doe', :ID_1 FROM sys.dual) n ON t1."PersonID" = n."PersonID"
ORDER BY
	n."PersonID"

