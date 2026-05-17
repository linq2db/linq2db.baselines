-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	'Element ' || Coalesce("r"."VarCharTextNullable", '') || ' Text1',
	'Element ' || "r"."VarCharText" || ' Text2',
	'Element ' || Coalesce("r"."NVarCharTextNullable", '') || ' Text3',
	'Element ' || "r"."NVarCharText" || ' Text4',
	'Element ' || Coalesce("r"."VarCharTextNullable", '') || ' Text11',
	'Element ' || "r"."VarCharText" || ' Text12',
	'Element ' || Coalesce("r"."NVarCharTextNullable", '') || ' Text13',
	'Element ' || "r"."NVarCharText" || ' Text14'
FROM
	"StringConcatTypedEntity" "r"
ORDER BY
	"r"."Id"

