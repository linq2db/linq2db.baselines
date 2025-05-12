BeforeExecute
-- Informix.DB2 Informix

SELECT
	(p2.PersonID * 2) / (LENGTH('22.') - 1),
	p2.FirstName
FROM
	Person p2

