-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

