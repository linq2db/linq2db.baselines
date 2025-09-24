BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CHAR_LENGTH(p.FirstName || '.') - 1
FROM
	Person p

