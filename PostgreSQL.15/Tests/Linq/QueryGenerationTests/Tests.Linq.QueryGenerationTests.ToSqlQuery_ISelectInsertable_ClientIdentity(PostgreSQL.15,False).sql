-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
SELECT
	345,
	t1."Value" + :addition
FROM
	"TableWithIdentitySrc" t1

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

