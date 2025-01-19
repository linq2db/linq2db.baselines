BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t1
SET
	"Data" = '***III***'
WHERE
	t1.ID = 3

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t
SET
	"Data" = '***OOO***'
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"TrimTestTable" t
SET
	"Data" = '***SSS***'
WHERE
	t."Data" = '***HHH***'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

