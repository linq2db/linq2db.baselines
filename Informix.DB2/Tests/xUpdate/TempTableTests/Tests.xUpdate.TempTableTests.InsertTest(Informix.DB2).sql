-- Informix.DB2 Informix

INSERT INTO Table2
(
	ID
)
SELECT
	t.ID
FROM
	Table1 t

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Date"
FROM
	Table2 t1

