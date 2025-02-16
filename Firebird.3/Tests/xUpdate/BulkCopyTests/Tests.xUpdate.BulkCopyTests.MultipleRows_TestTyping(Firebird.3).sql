BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "MultipleRowsTable"
(
	"Id",
	"DecimalValue1",
	"DecimalValue2"
)
SELECT 1,NULL,1 FROM rdb$database UNION ALL
SELECT 2,1.5,-2.6 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."DecimalValue1",
	"t1"."DecimalValue2"
FROM
	"MultipleRowsTable" "t1"
ORDER BY
	"t1"."Id"

