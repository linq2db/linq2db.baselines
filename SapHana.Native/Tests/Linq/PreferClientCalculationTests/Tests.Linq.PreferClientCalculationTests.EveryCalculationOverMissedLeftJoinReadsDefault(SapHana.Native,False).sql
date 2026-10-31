-- SapHana.Native SapHana
SELECT
	"e"."Id",
	Coalesce("j"."Value1", 0) + 1,
	(Coalesce("j"."Value1", 0) + 1) - BITAND(Coalesce("j"."Value1", 0), 1),
	CASE
		WHEN Coalesce("j"."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	CASE
		WHEN Coalesce("j"."Value1", 0) IN (0) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce("j"."Value1", 0), 5) THEN 'y'
		ELSE 'n'
	END,
	-Coalesce("j"."Value1", 0) + 1,
	CASE
		WHEN Coalesce("j"."Flag", 0) = 0 THEN 't'
		ELSE 'f'
	END,
	CASE
		WHEN NOT (Coalesce("j"."Flag", 0) = 1 OR "e"."Id" < 0) THEN 't'
		ELSE 'f'
	END,
	Abs(Coalesce("j"."Value1", 0)) + 1,
	'x' || CAST(Coalesce("j"."Value1", 0) AS NVarChar(11)),
	ABS(Coalesce("j"."Value1", 0)) + 1,
	CAST(Coalesce("j"."Value1", 0) AS Double) + 1,
	CASE
		WHEN "e"."Id" > 0 THEN Coalesce("j"."Value1", 0)
		ELSE 5
	END + 1,
	Coalesce("j"."Value1", 0) + 1,
	Coalesce("j"."Value1", 0) + 1
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
	"j"."Value1"
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000

