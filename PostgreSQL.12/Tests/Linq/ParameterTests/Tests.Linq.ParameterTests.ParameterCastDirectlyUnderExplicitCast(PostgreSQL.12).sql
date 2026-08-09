-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
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

