-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	t1."Value" + 123
FROM
	"TableWithIdentitySrc" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

