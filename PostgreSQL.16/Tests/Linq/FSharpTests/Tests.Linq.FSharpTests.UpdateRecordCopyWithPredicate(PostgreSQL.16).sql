-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
UPDATE
	"RecordSetterTable"
SET
	"Text" = 'updated recently'
WHERE
	"RecordSetterTable"."Number" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Number",
	r."Text"
FROM
	"RecordSetterTable" r
WHERE
	r."Id" = 1
LIMIT 2

