BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @p

