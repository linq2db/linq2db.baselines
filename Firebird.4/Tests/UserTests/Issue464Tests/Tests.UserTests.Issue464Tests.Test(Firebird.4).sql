-- Firebird.4 Firebird4

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int
)

-- Firebird.4 Firebird4

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database UNION ALL
SELECT 3,3 FROM rdb$database

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue464" "t1"

-- Firebird.4 Firebird4

DROP TABLE "Issue464"

