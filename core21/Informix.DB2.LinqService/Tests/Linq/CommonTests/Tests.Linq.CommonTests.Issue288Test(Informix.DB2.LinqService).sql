BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT FIRST 1 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = @ID

