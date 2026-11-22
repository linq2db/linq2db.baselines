-- SapHana.Native SapHana
SELECT
	"i"."Id",
	"i"."Value",
	"i"."GroupId",
	"i"."Name"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" < 3
LIMIT 2

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- SapHana.Native SapHana
SELECT
	"i"."Id",
	"i"."Value",
	"i"."GroupId",
	"i"."Name"
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t1"
		LEFT JOIN "BatchItem" "i" ON "i"."Id" < 3

