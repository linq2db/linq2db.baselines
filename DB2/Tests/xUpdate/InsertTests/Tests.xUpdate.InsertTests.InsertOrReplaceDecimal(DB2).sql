-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @MoneyValue (1, 0) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @MoneyValue (1, 0) -- Decimal
SET     @MoneyValue = 0

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @MoneyValue (1, 1) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @MoneyValue (1, 1) -- Decimal
SET     @MoneyValue = 0.5

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @MoneyValue (2, 2) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @MoneyValue (2, 2) -- Decimal
SET     @MoneyValue = 0.05

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @MoneyValue (4, 4) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @MoneyValue (4, 4) -- Decimal
SET     @MoneyValue = 0.0005

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @MoneyValue (2, 1) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @MoneyValue (2, 1) -- Decimal
SET     @MoneyValue = 1.5

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 6
DECLARE @MoneyValue (3, 2) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 6
DECLARE @MoneyValue (3, 2) -- Decimal
SET     @MoneyValue = 1.05

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 7
DECLARE @MoneyValue (5, 4) -- Decimal
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

-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 7
DECLARE @MoneyValue (5, 4) -- Decimal
SET     @MoneyValue = 1.0005

MERGE INTO "TableWithMoney" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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

