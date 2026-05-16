-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	'Element ' || Coalesce("r"."VarCharTextNullable", '') || ' Text1',
	'Element ' || "r"."VarCharText" || ' Text2',
	'Element ' || Coalesce("r"."NVarCharTextNullable", '') || ' Text3',
	'Element ' || "r"."NVarCharText" || ' Text4',
	'Element ' || Coalesce(VarChar("r"."VarCharTextNullable", 255), '') || ' Text11',
	'Element ' || VarChar("r"."VarCharText", 255) || ' Text12',
	'Element ' || Coalesce(VarChar("r"."NVarCharTextNullable", 255), '') || ' Text13',
	'Element ' || VarChar("r"."NVarCharText", 255) || ' Text14'
FROM
	"StringConcatTypedEntity" "r"
ORDER BY
	"r"."Id"

