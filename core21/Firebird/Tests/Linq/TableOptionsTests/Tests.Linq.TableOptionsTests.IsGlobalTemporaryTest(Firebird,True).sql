BeforeExecute
-- Firebird

CREATE TABLE "IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsGlobalTemporaryTable" "t1"

BeforeExecute
-- Firebird

DROP TABLE "IsGlobalTemporaryTable"

