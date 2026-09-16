-- Firebird.5 Firebird4
SELECT
	"e"."Id",
	Coalesce("j"."Value1", 0) + 1,
	CASE
		WHEN Coalesce("j"."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce("j"."Value1", 0) - 1),
	CASE
		WHEN "j"."Date" IS NULL THEN 1
		ELSE Extract(year from "j"."Date")
	END,
	CASE
		WHEN "j"."Date" IS NULL THEN 'n'
		WHEN "j"."Date" > CAST('2000-01-01' AS TimeStamp) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN "j"."Date" IS NULL THEN 'y'
		WHEN "j"."Date" < CAST('2000-01-01' AS TimeStamp) THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date"
FROM
	"MissedJoinEntity" "t1"

