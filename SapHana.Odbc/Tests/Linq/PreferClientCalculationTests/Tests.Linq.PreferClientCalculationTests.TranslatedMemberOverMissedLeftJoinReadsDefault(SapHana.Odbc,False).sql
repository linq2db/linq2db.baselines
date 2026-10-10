-- SapHana.Odbc SapHanaOdbc
SELECT
	"e"."Value1",
	CAST(Coalesce("j"."Value1", 0) AS NVarChar(11)),
	Lower(CAST(Coalesce("j"."Key", '00000000-0000-0000-0000-000000000000') AS NVarChar(36))),
	GREATEST(Coalesce("j"."Value1", 0), 5),
	LEAST(Coalesce("j"."Value1", 0), -5),
	CAST(Coalesce("j"."Value1", 0) AS NVarChar(11)) || '!',
	Coalesce("j"."Name", '') || '!',
	Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), 10),
	Year(Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), 10)),
	DayOfMonth(Add_Days(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'), 10))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

