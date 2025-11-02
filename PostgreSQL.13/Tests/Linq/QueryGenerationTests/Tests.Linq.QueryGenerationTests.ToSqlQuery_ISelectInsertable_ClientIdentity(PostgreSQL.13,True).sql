-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	:Value
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
SELECT
	345,
	t1."Value" + 123
FROM
	"TableWithIdentitySrc" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

