-- Oracle.21.Managed Oracle.Managed Oracle12
INSERT INTO "RecordSetterTable"
(
	"Id",
	"Number",
	"Text"
)
VALUES
(
	1,
	1,
	'before'
)

-- Oracle.21.Managed Oracle.Managed Oracle12
UPDATE
	"RecordSetterTable" row_1
SET
	"Text" = 'updated recently'
WHERE
	row_1."Number" = 1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Number" as "Number_1",
	r."Text"
FROM
	"RecordSetterTable" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

