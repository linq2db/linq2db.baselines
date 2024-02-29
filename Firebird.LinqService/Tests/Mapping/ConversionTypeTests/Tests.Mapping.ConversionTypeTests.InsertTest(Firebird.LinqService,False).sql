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
-- Firebird
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
	Cast(@ID as Int),
	Cast(@Data as VarChar(50) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird

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

