-- Firebird.3 Firebird3
SELECT
	CAST('p_' AS VARCHAR(2)),
	"e"."Id",
	CAST('N' AS VARCHAR(1)),
	NULL,
	NULL,
	"e"."Name",
	NULL,
	NULL,
	NULL,
	NULL
FROM
	"ConcatSetOpEntity" "e"
WHERE
	"e"."ParentId" IS NULL
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	"e_1"."Id",
	CAST('N' AS VARCHAR(1)),
	"e_1"."Name",
	NULL,
	CAST('p_' AS VARCHAR(2)),
	"e_1"."ParentId",
	CAST('N' AS VARCHAR(1))
FROM
	"ConcatSetOpEntity" "e_1"
WHERE
	"e_1"."ParentId" IS NOT NULL

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."ParentId",
	"t1"."Name"
FROM
	"ConcatSetOpEntity" "t1"

