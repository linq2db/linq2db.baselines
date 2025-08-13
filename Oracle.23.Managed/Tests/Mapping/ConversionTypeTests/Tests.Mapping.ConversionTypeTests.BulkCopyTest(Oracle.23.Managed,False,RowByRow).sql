BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

