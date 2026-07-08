-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12

UPDATE
	"TableWithIdentity"
SET
	"Value" = 123

-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

