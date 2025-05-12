BeforeExecute
-- Informix.DB2 Informix

SELECT
	LENGTH(p.FirstName || '.') - 1 + LENGTH('.') - 1
FROM
	Person p

