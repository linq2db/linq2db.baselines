BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue681Table"
			(
				ID      Int NOT NULL,
				"Value" Int NOT NULL,

				CONSTRAINT "PK_Issue681Table" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table4"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue681Table4"
			(
				ID      Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_Issue681Table4" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue681Table4"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue681Table4" FOR "Issue681Table4"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_Issue681Table4", 1);
			END
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 123
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table"
SET
	"Issue681Table"."Value" = @Value
WHERE
	"Issue681Table".ID = @ID

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"Issue681Table" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" "t1"
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 123

MERGE INTO "Issue681Table" "t1"
USING (SELECT Cast(@ID as Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Value" = @Value
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		Cast(@ID as Int),
		@Value
	)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	@Value
)
RETURNING
	ID

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue681Table2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird4 Firebird

DROP TABLE "Issue681Table2"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue681Table4"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table4"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

