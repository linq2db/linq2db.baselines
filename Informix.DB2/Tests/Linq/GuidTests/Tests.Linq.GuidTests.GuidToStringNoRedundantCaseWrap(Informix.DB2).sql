-- Informix.DB2 Informix

SELECT
	Lower(To_Char(t.Id))
FROM
	TableWithGuid t

-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) = 'x'

