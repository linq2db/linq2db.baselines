BeforeExecute
-- Firebird3 Firebird

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT DELETE ROWS

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TestTable"

