BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT 1,CAST('***OOO***' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

