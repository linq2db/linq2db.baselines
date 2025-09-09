BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	n.ID,
	n."FirstName"
FROM
	"Person" t1
		INNER JOIN (
			SELECT :ID AS ID, 'Janet' AS "FirstName" FROM sys.dual
			UNION ALL
			SELECT :ID_1, 'Doe' FROM sys.dual) n ON t1."PersonID" = n.ID
ORDER BY
	n.ID

