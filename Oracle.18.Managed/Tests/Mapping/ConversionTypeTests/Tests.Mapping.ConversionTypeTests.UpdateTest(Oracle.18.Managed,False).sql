BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" t1
SET
	"Data" = :Data
WHERE
	t1.ID = :ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" t
SET
	"Data" = :Data
WHERE
	t."Data" = '***XXX***'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = '***SSS***'
DECLARE @p Varchar2(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" t
SET
	"Data" = :Data
WHERE
	t."Data" = :p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r.ID

