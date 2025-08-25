BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.Str,
	CHAR_LENGTH(t.Str || '.') - 1,
	'original-' || t.Str
FROM
	TestLengthModel t

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Str
FROM
	TestLengthModel t1

