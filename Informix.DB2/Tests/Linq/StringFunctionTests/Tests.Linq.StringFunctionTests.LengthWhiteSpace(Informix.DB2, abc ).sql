BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t.Str,
	Length(t.Str || '.') - 1
FROM
	TestLengthModel t

