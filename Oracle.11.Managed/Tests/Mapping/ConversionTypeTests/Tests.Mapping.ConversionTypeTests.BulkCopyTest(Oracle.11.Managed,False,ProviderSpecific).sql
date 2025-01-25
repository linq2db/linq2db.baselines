BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "TrimTestTable" (ID, "Data") VALUES (1,'***OOO***')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

