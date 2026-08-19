-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	t."Id",
	t."Value",
	t."Money"
FROM
	"ParameterCastUnderCastTable" t
WHERE
	t."Value" = :name::text

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	t."Id",
	t."Value",
	t."Money"
FROM
	"ParameterCastUnderCastTable" t
WHERE
	t."Money" = :name::decimal

