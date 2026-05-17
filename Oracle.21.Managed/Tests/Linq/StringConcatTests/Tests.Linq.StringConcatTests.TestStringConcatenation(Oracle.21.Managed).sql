-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	'Element ' || r."VarCharTextNullable" || ' Text1',
	'Element ' || r."VarCharText" || ' Text2',
	'Element ' || r."NVarCharTextNullable" || ' Text3',
	'Element ' || r."NVarCharText" || ' Text4',
	'Element ' || Coalesce(CAST(r."VarCharTextNullable" AS VarChar(255)), '') || ' Text11',
	'Element ' || CAST(r."VarCharText" AS VarChar(255)) || ' Text12',
	'Element ' || Coalesce(CAST(r."NVarCharTextNullable" AS VarChar(255)), '') || ' Text13',
	'Element ' || CAST(r."NVarCharText" AS VarChar(255)) || ' Text14'
FROM
	"StringConcatTypedEntity" r
ORDER BY
	r."Id"

