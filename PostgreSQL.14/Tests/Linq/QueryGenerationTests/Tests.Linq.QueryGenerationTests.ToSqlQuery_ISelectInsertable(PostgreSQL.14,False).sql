-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	t1."Value" + :addition
FROM
	"TableWithIdentitySrc" t1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

