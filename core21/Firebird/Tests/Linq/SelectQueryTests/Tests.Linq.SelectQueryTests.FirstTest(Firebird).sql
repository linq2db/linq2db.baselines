BeforeExecute
-- Firebird

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird

SELECT
	DateAdd(Day, 1, CURRENT_TIMESTAMP),
	DateAdd(Day, 2, CURRENT_TIMESTAMP)
FROM rdb$database

BeforeExecute
-- Firebird

DROP TABLE "SampleClass"

