-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Value1",
	RTrim(Char(Coalesce("j"."Value1", 0))),
	Lower(substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 7, 2) || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 5, 2) || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 3, 2) || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 1, 2) || '-' || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 11, 2) || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 9, 2) || '-' || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 15, 2) || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 13, 2) || '-' || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 17, 4) || '-' || substr(hex(Coalesce("j"."Key", BX'00000000000000000000000000000000')), 21, 12)),
	GREATEST(Coalesce("j"."Value1", 0), 5),
	LEAST(Coalesce("j"."Value1", 0), -5),
	RTrim(Char(Coalesce("j"."Value1", 0))) || '!',
	Coalesce("j"."Name", '') || '!',
	Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + 10 DAY,
	Extract(year from (Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + 10 DAY)),
	Extract(day from (Coalesce("j"."Date", '0001-01-01-00.00.00.000000') + 10 DAY))
FROM
	"TranslatedMemberEntity" "e"
		LEFT JOIN "TranslatedMemberEntity" "j" ON "j"."Id" = "e"."Id" + 1000

