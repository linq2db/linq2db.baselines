BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.FirstName,
	RANK() OVER(ORDER BY (x.PersonID = 2))
FROM
	Person x

