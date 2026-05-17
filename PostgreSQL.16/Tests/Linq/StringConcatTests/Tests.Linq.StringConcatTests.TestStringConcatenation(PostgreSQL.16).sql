-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	'Element ' || Coalesce(r."VarCharTextNullable", '') || ' Text1',
	'Element ' || r."VarCharText" || ' Text2',
	'Element ' || Coalesce(r."NVarCharTextNullable", '') || ' Text3',
	'Element ' || r."NVarCharText" || ' Text4',
	'Element ' || Coalesce(r."VarCharTextNullable"::text, '') || ' Text11',
	'Element ' || r."VarCharText"::text || ' Text12',
	'Element ' || Coalesce(r."NVarCharTextNullable"::text, '') || ' Text13',
	'Element ' || r."NVarCharText"::text || ' Text14'
FROM
	"StringConcatTypedEntity" r
ORDER BY
	r."Id"

