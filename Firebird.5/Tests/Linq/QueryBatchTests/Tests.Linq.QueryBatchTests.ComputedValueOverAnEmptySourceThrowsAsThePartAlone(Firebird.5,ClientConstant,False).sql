-- Firebird.5 Firebird4
SELECT
	1
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" > 100
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- Firebird.5 Firebird4
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 2

SELECT
	"t1"."Item1_1",
	CASE
		WHEN "t1"."Item1" IS NOT NULL THEN CAST(@Item1 AS Int)
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
				CAST(@Item1 AS Int) as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

