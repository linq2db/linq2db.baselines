BeforeExecute
-- Firebird3 Firebird

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TestTable"

