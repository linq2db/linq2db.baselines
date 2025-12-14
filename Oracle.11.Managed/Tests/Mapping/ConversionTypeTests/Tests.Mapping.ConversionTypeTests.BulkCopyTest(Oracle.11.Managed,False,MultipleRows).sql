-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "TrimTestTable" (ID, "Data") VALUES (1,'***OOO***')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

