BeforeExecute
-- Informix.DB2 Informix

SELECT
	(p5.PersonID * (LENGTH('22.') - 1)) / 2,
	p5.FirstName
FROM
	Person p5

