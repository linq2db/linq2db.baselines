BeforeExecute
-- Firebird.2.5 Firebird

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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = CASE
		WHEN "t1"."Value" = '0' THEN '1'
		WHEN "t1"."Value" <> '0' THEN '0'
		ELSE NULL
	END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"

