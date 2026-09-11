-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 100

SELECT FIRST @take
	r.PersonID
FROM
	Person r
ORDER BY
	r.PersonID

