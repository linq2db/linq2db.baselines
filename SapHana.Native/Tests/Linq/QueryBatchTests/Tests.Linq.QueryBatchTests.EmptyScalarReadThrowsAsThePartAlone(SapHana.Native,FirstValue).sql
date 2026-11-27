-- SapHana.Native SapHana
SELECT
	"i"."Id"
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
SELECT
	(
		SELECT
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."Id" > 100
		LIMIT 1
	)
FROM DUMMY

