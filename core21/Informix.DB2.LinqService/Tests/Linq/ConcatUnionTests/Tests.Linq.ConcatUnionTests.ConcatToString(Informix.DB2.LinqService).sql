BeforeExecute
-- Informix.DB2 Informix
DECLARE @pattern VarChar(3) -- String
SET     @pattern = '%1%'

SELECT FIRST 10 
	t1.FirstName
FROM
	( 
		SELECT 
			p.FirstName
		FROM
			Person p
		WHERE
			p.FirstName LIKE '1'
		UNION ALL
		SELECT 
			p_1.FirstName
		FROM
			Person p_1
		WHERE
			To_Char(p_1.PersonID) LIKE @pattern ESCAPE '~'
	) t1

