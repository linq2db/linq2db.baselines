-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @flag Integer -- Int32
SET     @flag = 4

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	(t."Flags" & :flag) = :flag

