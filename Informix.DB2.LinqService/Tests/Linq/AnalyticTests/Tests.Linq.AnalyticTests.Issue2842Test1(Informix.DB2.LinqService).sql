BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.FirstName,
	RANK() OVER(ORDER BY (x.PersonID = 2))
FROM
	Person x

