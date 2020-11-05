BeforeExecute
-- Firebird

CREATE GLOBAL TEMPORARY TABLE "IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

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

