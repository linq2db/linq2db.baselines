-- Firebird.4 Firebird4
SELECT
	CAST('p_' AS VARCHAR(2)),
	"e"."Id",
	CAST('N' AS VARCHAR(1)),
	"e"."Name"
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."ParentId" IS NULL
UNION ALL
SELECT
	CAST('c_' AS VARCHAR(2)),
	"e_1"."Id",
	CAST('N' AS VARCHAR(1)),
	"e_1"."Name"
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NOT NULL

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

