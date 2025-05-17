BeforeExecute
-- Informix.DB2 Informix

SELECT
	CHAR_LENGTH(p.FirstName || '.') - 1
FROM
	Person p

