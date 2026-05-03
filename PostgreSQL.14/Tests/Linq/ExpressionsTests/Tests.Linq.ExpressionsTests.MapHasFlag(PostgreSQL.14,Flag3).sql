-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @flag Integer -- Int32
SET     @flag = 4

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	t."Flags" & :flag = :flag

