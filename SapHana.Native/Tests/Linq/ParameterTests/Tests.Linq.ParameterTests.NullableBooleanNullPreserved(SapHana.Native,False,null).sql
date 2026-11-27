-- SapHana.Native SapHana
INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	NULL
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

-- SapHana.Native SapHana
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Value" = 0 THEN 1
		WHEN "t1"."Value" = 1 THEN 0
		ELSE NULL
	END

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

-- SapHana.Native SapHana
UPDATE
	"TestBool" "r"
SET
	"Value" = NULL
WHERE
	"r"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

