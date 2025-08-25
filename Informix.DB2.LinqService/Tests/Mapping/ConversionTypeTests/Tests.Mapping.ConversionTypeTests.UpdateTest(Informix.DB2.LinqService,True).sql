BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	TrimTestTable t1
SET
	"Data" = '***III***'
WHERE
	t1.ID = 3

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	TrimTestTable t
SET
	"Data" = '***OOO***'
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	TrimTestTable t
SET
	"Data" = '***SSS***'
WHERE
	t."Data" = '***HHH***'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

