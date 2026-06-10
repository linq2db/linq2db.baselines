-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @data Varchar2 -- String
SET     @data = NULL

INSERT INTO "StringTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	:data
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."Data" as "Data_1"
FROM
	"StringTestTable" t
WHERE
	t.ID = 2
FETCH NEXT 2 ROWS ONLY

