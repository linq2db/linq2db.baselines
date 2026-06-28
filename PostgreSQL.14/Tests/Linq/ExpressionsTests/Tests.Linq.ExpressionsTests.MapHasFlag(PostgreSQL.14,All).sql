-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @flag Integer -- Int32
SET     @flag = 7

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	(t."Flags" & :flag) = :flag

