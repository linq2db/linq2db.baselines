-- SapHana.Native SapHana
DECLARE @bound TimeStamp -- DateTime2
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.0000000'
DECLARE @bound_1 TimeStamp -- DateTime2
SET     @bound_1 = TIMESTAMP '2000-01-01 00:00:00.0000000'

SELECT
	"e"."Id",
	Coalesce("j"."Value1", 0) + 1,
	CASE
		WHEN Coalesce("j"."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce("j"."Value1", 0) - 1),
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000') > :"bound"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000') < :"bound_1"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000') > "e"."Date"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000') <= "e"."Date"
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Date",
	"t1"."Flag",
	"t1"."Name"
FROM
	"MissedJoinEntity" "t1"

-- SapHana.Native SapHana
SELECT
	Year(Coalesce("j"."Date", TIMESTAMP '0001-01-01 00:00:00.0000000'))
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

