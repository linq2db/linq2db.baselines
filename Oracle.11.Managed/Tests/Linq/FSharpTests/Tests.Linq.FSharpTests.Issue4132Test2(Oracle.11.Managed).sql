-- Oracle.11.Managed Oracle11
INSERT INTO "Issue4132Table"
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
	"Issue4132Table" row_1
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
	"Issue4132Table" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

