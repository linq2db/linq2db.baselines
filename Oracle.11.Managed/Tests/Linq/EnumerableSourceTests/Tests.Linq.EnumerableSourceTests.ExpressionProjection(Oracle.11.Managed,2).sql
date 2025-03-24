BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 3
DECLARE @ID_1 Int32
SET     @ID_1 = 4

SELECT
	n."PersonID",
	n."FirstName"
FROM
	"Person" t1
		INNER JOIN (
			SELECT :ID AS "PersonID", 'Janet' AS "FirstName" FROM sys.dual
			UNION ALL
			SELECT :ID_1, 'Doe' FROM sys.dual) n ON t1."PersonID" = n."PersonID"
ORDER BY
	n."PersonID"

