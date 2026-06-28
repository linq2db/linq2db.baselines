-- Oracle.21.Managed Oracle.Managed Oracle12

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

-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"Issue4132Table" row_1
SET
	"Id" = row_1."Id",
	"Number" = row_1."Number",
	"Text" = 'updated recently'
WHERE
	row_1."Number" = 1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Number" as "Number_1",
	r."Text"
FROM
	"Issue4132Table" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

