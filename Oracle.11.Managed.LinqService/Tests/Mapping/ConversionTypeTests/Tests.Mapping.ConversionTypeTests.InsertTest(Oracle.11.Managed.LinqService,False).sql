BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

