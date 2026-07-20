-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

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
		CAST(@Value_1 AS Int)
	)

-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

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
		CAST(@Value_1 AS Int)
	)

