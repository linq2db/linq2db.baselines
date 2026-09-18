-- Firebird.5 Firebird4
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
	"j"."Date",
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000') > CAST(@bound AS TimeStamp)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000') < CAST(@bound AS TimeStamp)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000') > "e"."Date"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000') <= "e"."Date"
			THEN 'y'
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

