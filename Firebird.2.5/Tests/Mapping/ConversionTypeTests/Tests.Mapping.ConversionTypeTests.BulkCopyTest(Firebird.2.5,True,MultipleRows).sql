-- Firebird.2.5 Firebird

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT 1,CAST('***OOO***' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

