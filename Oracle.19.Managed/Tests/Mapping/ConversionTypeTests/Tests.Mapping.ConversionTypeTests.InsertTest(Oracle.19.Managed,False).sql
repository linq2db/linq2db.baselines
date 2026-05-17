-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	:ID,
	:Data
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	:ID,
	:Data
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

