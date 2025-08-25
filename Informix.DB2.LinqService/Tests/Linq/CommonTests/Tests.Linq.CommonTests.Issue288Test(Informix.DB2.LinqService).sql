BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT FIRST 1
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = @p

