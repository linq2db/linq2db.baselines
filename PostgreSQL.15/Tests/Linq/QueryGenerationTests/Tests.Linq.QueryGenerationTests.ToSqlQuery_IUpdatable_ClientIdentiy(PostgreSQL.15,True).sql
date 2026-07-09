-- PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.15 PostgreSQL13

UPDATE
	"TableWithIdentity"
SET
	"Id" = 492,
	"Value" = 123

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

