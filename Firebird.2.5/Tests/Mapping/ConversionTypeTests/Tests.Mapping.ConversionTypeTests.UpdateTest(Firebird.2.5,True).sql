BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT 1,CAST('***XXX***' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'***HHH***' FROM rdb$database UNION ALL
SELECT 3,'***VVV***' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = '***III***'
WHERE
	"t1".ID = 3

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***OOO***'
WHERE
	"t"."Data" = '***XXX***' AND "t"."Data" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***SSS***'
WHERE
	"t"."Data" = '***HHH***' AND "t"."Data" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

