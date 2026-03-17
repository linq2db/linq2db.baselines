-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

MERGE INTO "Issue681Table" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@Value AS Int)
	)

-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

MERGE INTO "Issue681Table" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@Value AS Int)
	)

