-- SapHana.Native SapHana
SELECT
	1
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" > 100
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- SapHana.Native SapHana
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 2
DECLARE @Item1_1 Integer -- Int32
SET     @Item1_1 = 2

SELECT
	"t1"."Item1_1",
	CASE
		WHEN "t1"."Item1" IS NOT NULL THEN :"Item1"
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				:"Item1_1" as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" > 100
			LIMIT 1
		) "t1" ON 1=1

