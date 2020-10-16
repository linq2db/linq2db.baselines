BeforeExecute
-- Firebird3 Firebird

CREATE GLOBAL TEMPORARY TABLE "IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsTemporaryTable" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "IsTemporaryTable"

