BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	CAST(@ID AS Int),
	CAST(@Data AS VARCHAR(9))
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

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

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TrimTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TrimTestTable"';
END

