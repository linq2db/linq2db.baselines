-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @value Integer -- Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	:value
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

