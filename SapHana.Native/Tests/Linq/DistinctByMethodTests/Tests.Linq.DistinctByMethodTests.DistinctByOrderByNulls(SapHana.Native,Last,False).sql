-- SapHana.Native SapHana
SELECT
	"t1"."RowNumber_3",
	"t1"."Name",
	"t1"."RowNumber_1",
	"t1"."RowNumber_4",
	"t1"."Amount",
	"t1"."IsActive",
	"t1"."RowNumber_2"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Group" ORDER BY "e"."Priority" NULLS LAST, "e"."Id", "e"."Date") as "RowNumber",
			"e"."Group" as "RowNumber_1",
			"e"."Priority" as "RowNumber_2",
			"e"."Id" as "RowNumber_3",
			"e"."Date" as "RowNumber_4",
			"e"."Name",
			"e"."Amount",
			"e"."IsActive"
		FROM
			"TestData" "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_2" NULLS LAST,
	"t1"."RowNumber_3",
	"t1"."RowNumber_4"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Group",
	"t1"."Date",
	"t1"."Amount",
	"t1"."IsActive",
	"t1"."Priority"
FROM
	"TestData" "t1"

