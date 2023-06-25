BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

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
-- Firebird3 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table"';
END

