-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(1, 0))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(1, 0))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(1, 1)
SET     @MoneyValue = 0.5

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(1, 1)
SET     @MoneyValue = 0.5

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(1, 1))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(1, 1))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(2, 2)
SET     @MoneyValue = 0.05

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(2, 2)
SET     @MoneyValue = 0.05

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(2, 2))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(2, 2))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(4, 4)
SET     @MoneyValue = 0.0005

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(4, 4)
SET     @MoneyValue = 0.0005

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(4, 4))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(4, 4))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.5

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.5

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(2, 1))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(2, 1))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.05

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.05

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(3, 2))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(3, 2))
	)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.0005

INSERT INTO "TableWithMoney"
(
	ID,
	"MoneyValue"
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.0005

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM rdb$database) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"MoneyValue" = CAST(@MoneyValue AS Decimal(5, 4))
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"MoneyValue"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@MoneyValue AS Decimal(5, 4))
	)

