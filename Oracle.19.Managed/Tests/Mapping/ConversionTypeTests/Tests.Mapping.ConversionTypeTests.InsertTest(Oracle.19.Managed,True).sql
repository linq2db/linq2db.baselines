-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	1,
	'***OOO***'
)

-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	'***HHH***'
)

-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

