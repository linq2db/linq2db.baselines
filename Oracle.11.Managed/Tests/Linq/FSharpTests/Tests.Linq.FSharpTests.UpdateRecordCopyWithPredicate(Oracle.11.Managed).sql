-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
UPDATE
	"RecordSetterTable" row_1
SET
	"Text" = 'updated recently'
WHERE
	row_1."Number" = 1

-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	r."Number",
	r."Text"
FROM
	"RecordSetterTable" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

