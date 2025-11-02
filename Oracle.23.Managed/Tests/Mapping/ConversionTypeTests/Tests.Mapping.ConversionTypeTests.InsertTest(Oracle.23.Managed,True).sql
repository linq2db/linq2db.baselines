-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

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

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

