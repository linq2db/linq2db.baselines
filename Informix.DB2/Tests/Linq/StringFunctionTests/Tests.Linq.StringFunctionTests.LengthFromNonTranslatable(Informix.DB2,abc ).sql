-- Informix.DB2 Informix

SELECT
	t.Str,
	CHAR_LENGTH(t.Str || '.') - 1,
	'original-' || t.Str
FROM
	TestLengthModel t

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Str
FROM
	TestLengthModel t1

