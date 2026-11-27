-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."CharFld"
FROM
	"CharFieldRecord" t1
LIMIT 1

