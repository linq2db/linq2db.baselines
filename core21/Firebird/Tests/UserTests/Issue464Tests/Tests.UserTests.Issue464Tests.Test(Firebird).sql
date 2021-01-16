BeforeExecute
-- Firebird

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int
)

BeforeExecute
-- Firebird

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database UNION ALL
SELECT 3,3 FROM rdb$database

BeforeExecute
-- Firebird

DROP TABLE "Issue464"

