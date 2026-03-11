-- PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL
DECLARE @newValue Integer -- Int32
SET     @newValue = 123

UPDATE
	"TableWithIdentity"
SET
	"Value" = :newValue

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

