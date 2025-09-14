BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

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

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

UPDATE
	"TestBool" "t1"
SET
	"Value" = NOT "t1"."Value"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = FALSE

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
FETCH NEXT 2 ROWS ONLY

