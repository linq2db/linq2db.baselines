-- Firebird.2.5 Firebird

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int
)

-- Firebird.2.5 Firebird

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database UNION ALL
SELECT 3,3 FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue464" "t1"

-- Firebird.2.5 Firebird

DROP TABLE "Issue464"

