-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST('p_' AS NVarChar(255)),
	"e"."Id",
	CAST('N' AS NVarChar(255)),
	"e"."Name"
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."ParentId" IS NULL
UNION
SELECT
	CAST('c_' AS NVarChar(255)),
	"e_1"."Id",
	CAST('N' AS NVarChar(255)),
	"e_1"."Name"
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NOT NULL

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

