BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT SKIP @skip FIRST @take
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName LIKE 'J%' ESCAPE '~'
ORDER BY
	x.PersonID DESC

