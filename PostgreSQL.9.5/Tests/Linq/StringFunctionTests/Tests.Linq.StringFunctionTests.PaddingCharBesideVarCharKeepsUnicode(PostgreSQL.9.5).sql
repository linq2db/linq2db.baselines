-- PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	CASE
		WHEN t."VarCharColumn" IS NULL OR Length(t."VarCharColumn") >= 8
			THEN t."VarCharColumn"
		ELSE LPAD(t."VarCharColumn", 8, 'Ж')
	END
FROM
	"StringTypesTable" t

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTypesTable" t1

