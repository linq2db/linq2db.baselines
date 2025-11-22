-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	:Value
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

UPDATE
	"TableWithIdentity"
SET
	"Value" = 123

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

