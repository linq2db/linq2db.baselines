-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value",
	t."ValueStr"
FROM
	"InstanceClass" t
WHERE
	t."Id" > 1 AND
	t."Value" >= 104 AND
	t."Value" <= 115 AND
	t."ValueStr" LIKE 'S%' ESCAPE '~'

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value",
	t."ValueStr"
FROM
	"InstanceClass" t
WHERE
	t."Id" > 1 AND
	t."Value" >= 104 AND
	t."Value" <= 115 AND
	t."ValueStr" LIKE 'S%' ESCAPE '~'

