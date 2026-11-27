-- Firebird.3 Firebird3
CREATE TABLE "BulkCopyCustomTypeEntity"
(
	"Id"    Int NOT NULL,
	"Value" Int
)

-- Firebird.3 Firebird3
INSERT INTO "BulkCopyCustomTypeEntity"
(
	"Id",
	"Value"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database UNION ALL
SELECT 3,3 FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"BulkCopyCustomTypeEntity" "t1"

-- Firebird.3 Firebird3
DROP TABLE "BulkCopyCustomTypeEntity"

