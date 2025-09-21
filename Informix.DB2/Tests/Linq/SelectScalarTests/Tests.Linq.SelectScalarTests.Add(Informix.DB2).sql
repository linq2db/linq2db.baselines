BeforeExecute
-- Informix.DB2 Informix

SELECT
	CHAR_LENGTH(Substr('123', 2, 2) || '.') + 2
FROM table(set{1})

