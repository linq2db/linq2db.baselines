-- Firebird.5 Firebird4
SELECT
	"e"."Value1",
	Coalesce("j"."Value1", 0),
	CAST(Lower(UUID_TO_CHAR(Coalesce("j"."Key", X'00000000000000000000000000000000'))) AS VarChar(36) CHARACTER SET UNICODE_FSS),
	CASE
		WHEN Coalesce("j"."Value1", 0) >= 5 THEN Coalesce("j"."Value1", 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce("j"."Value1", 0) <= -5 THEN Coalesce("j"."Value1", 0)
		ELSE -5
	END,
	Coalesce("j"."Value1", 0) || '!',
	Coalesce("j"."Name", '') || '!',
	DateAdd(Day, 10, "j"."Date"),
	Extract(year from DateAdd(Day, 10, "j"."Date")),
	Extract(day from DateAdd(Day, 10, "j"."Date"))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

