-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
UPDATE
	"RecordSetterTable"
SET
	"Text" = 'updated recently'
WHERE
	"RecordSetterTable"."Number" = 1

-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id",
	r."Number",
	r."Text"
FROM
	"RecordSetterTable" r
WHERE
	r."Id" = 1
LIMIT 2

