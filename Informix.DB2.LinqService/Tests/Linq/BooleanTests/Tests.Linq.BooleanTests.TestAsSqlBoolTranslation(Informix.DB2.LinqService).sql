BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COALESCE('t'::BOOLEAN, 'f'::BOOLEAN)
FROM table(set{1})

