BeforeExecute
-- Informix.DB2 Informix

SELECT
	COALESCE('t'::BOOLEAN, 'f'::BOOLEAN)::BOOLEAN
FROM table(set{1})

