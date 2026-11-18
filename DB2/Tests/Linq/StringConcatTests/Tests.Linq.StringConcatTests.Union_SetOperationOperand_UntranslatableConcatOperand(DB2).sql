-- DB2 DB2.LUW DB2LUW
SELECT
	VarChar('p_', 255),
	"e"."Id",
	VarChar('N', 255),
	"e"."Name"
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."Name" IS NOT NULL
UNION
SELECT
	VarChar('p_', 255),
	"e_1"."Id",
	VarChar('N', 255),
	"e_1"."Name"
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

