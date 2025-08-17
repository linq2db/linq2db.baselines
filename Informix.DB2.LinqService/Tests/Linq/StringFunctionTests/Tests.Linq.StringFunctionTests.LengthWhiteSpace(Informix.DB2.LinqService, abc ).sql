BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t.Str,
	CHAR_LENGTH(t.Str || '.') - 1
FROM
	TestLengthModel t

