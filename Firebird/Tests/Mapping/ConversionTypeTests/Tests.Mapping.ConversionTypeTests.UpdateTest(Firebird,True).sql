BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TrimTestTable"
			(
				ID     Int                                   NOT NULL,
				"Data" VarChar(50) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT 1,CAST('***XXX***' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'***HHH***' FROM rdb$database UNION ALL
SELECT 3,'***VVV***' FROM rdb$database

BeforeExecute
-- Firebird

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***III***'
WHERE
	"TrimTestTable".ID = 3

BeforeExecute
-- Firebird

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***OOO***'
WHERE
	"TrimTestTable"."Data" = '***XXX***'

BeforeExecute
-- Firebird

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***SSS***'
WHERE
	"TrimTestTable"."Data" = '***HHH***'

BeforeExecute
-- Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

