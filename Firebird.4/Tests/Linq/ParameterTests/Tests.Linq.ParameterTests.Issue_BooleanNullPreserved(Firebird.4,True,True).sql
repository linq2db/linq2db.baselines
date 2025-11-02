-- Firebird.4 Firebird4

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	FALSE
)

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NOT "t1"."Value"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = FALSE

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

