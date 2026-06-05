-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Group_1",
	"t1"."Date_1",
	"t1"."Amount",
	"t1"."IsActive",
	"t1"."Priority"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Id", "e"."Name" ORDER BY "e"."Name", "e"."Date" DESC) as "RowNumber",
			"e"."Id",
			"e"."Name",
			"e"."Group" as "Group_1",
			"e"."Date" as "Date_1",
			"e"."Amount",
			"e"."IsActive",
			"e"."Priority"
		FROM
			"TestData" "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Name",
	"t1"."Date_1" DESC

-- SapHana.Odbc SapHanaOdbc

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

