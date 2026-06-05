-- Firebird.5 Firebird4

SELECT
	"x"."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Group" ORDER BY "e"."Priority" NULLS LAST, "e"."Id") as "RowNumber",
			"e"."Priority",
			"e"."Id",
			"e"."Group" as "Group_1"
		FROM
			"TestData" "e"
	) "x"
WHERE
	"x"."RowNumber" = 1
ORDER BY
	"x"."Group_1" NULLS LAST,
	"x"."Priority" NULLS LAST,
	"x"."Id"

-- Firebird.5 Firebird4

SELECT
	"x"."Id"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Group" ORDER BY "e"."Priority" NULLS LAST, "e"."Id") as "RowNumber",
			"e"."Priority",
			"e"."Id",
			"e"."Group" as "Group_1"
		FROM
			"TestData" "e"
	) "x"
WHERE
	"x"."RowNumber" = 1
ORDER BY
	"x"."Group_1" NULLS LAST,
	"x"."Priority" NULLS LAST,
	"x"."Id"

