-- PostgreSQL.9.2 PostgreSQL
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."CharFld"
FROM
	"CharFieldRecord" t1
LIMIT 1

