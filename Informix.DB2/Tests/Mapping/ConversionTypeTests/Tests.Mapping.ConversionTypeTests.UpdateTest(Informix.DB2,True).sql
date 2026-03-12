-- Informix.DB2 Informix

UPDATE
	TrimTestTable t1
SET
	"Data" = '***III***'
WHERE
	t1.ID = 3

-- Informix.DB2 Informix

UPDATE
	TrimTestTable t
SET
	"Data" = '***OOO***'
WHERE
	t."Data" = '***XXX***'

-- Informix.DB2 Informix

UPDATE
	TrimTestTable t
SET
	"Data" = '***SSS***'
WHERE
	t."Data" = '***HHH***'

-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

