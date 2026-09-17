-- Firebird.2.5 Firebird
DECLARE @bound TimeStamp -- DateTime
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.0000'

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
		WHEN "j"."Date" > CAST(@bound AS TimeStamp) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN "j"."Date" IS NULL THEN 'y'
		WHEN "j"."Date" < CAST(@bound AS TimeStamp) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN "j"."Date" IS NULL THEN 'n'
		WHEN "j"."Date" > "e"."Date" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN "j"."Date" IS NULL THEN 'y'
		WHEN "j"."Date" <= "e"."Date" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date"
FROM
	"MissedJoinEntity" "t1"

