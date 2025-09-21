BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CHAR_LENGTH(Substr('123', 2, 2) || '.') + 2
FROM table(set{1})

