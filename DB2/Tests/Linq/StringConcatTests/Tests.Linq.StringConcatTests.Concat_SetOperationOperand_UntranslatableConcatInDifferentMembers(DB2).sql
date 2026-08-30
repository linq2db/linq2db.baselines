-- DB2 DB2.LUW DB2LUW
SELECT
	VarChar('p_', 255),
	"e"."Id",
	VarChar('N', 255),
	CAST(NULL AS char(16) for bit data),
	CAST(NULL AS NVarChar(255)),
	"e"."Name",
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS char(16) for bit data),
	CAST(NULL AS NVarChar(255))
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."ParentId" IS NULL
UNION ALL
SELECT
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS char(16) for bit data),
	CAST(NULL AS NVarChar(255)),
	"e_1"."Id",
	VarChar('N', 255),
	"e_1"."Name",
	CAST(NULL AS NVarChar(255)),
	VarChar('p_', 255),
	"e_1"."ParentId",
	VarChar('N', 255)
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NOT NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

