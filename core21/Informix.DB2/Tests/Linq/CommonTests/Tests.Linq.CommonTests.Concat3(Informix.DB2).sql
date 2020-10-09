BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	(((p.FirstName || ' ') || To_Char(1)) || To_Char(2)) = 'John 12'

