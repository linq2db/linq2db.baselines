BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 100

SELECT FIRST @take
	r.PersonID,
	r.PersonID
FROM
	Person r
GROUP BY
	r.PersonID,
	r.PersonID
ORDER BY
	r.PersonID

