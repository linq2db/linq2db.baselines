-- Firebird.4 Firebird4
SELECT
	1
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" > 100
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."Item1_1",
	CASE
		WHEN "t1"."Item1" IS NOT NULL THEN 2
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		LEFT JOIN (
			SELECT
				2 as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

