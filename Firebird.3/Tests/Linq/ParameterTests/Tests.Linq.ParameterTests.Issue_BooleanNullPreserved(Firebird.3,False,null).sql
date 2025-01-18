BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NOT "t1"."Value"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

