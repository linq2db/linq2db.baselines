-- Firebird.2.5 Firebird

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'0'
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = CASE
		WHEN "t1"."Value" = '0' THEN '1'
		WHEN "t1"."Value" = '1' THEN '0'
		ELSE NULL
	END

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = '0'

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

