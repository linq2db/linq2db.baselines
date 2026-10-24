-- Firebird.5 Firebird4
SELECT
	CAST('p_' AS VARCHAR(2)),
	"e"."Id",
	CAST('N' AS VARCHAR(1)),
	"e"."Name"
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."Name" IS NOT NULL
UNION
SELECT
	CAST('p_' AS VARCHAR(2)),
	"e_1"."Id",
	CAST('N' AS VARCHAR(1)),
	"e_1"."Name"
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NULL

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

