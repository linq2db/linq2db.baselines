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

DROP TABLE "IsGlobalTemporaryTable"

