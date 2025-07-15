BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	t1."Value" + 123
FROM
	"TableWithIdentitySrc" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

