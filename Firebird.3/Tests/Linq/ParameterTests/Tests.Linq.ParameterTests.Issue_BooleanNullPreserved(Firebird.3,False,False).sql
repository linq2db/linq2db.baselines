-- Firebird.3 Firebird3

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	TRUE
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

UPDATE
	"TestBool" "t1"
SET
	"Value" = NOT "t1"."Value"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = TRUE

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

