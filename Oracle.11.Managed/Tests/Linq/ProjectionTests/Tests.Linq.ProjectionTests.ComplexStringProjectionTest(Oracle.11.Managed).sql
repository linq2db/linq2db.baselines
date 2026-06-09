-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."Data"
FROM
	"StringTestTable" t
WHERE
	t.ID = 2 AND ROWNUM <= 2

