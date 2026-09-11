-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue_1 Decimal(1, 0)
SET     @MoneyValue_1 = 0

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(1, 1)
SET     @MoneyValue = 0.5

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(1, 1)
SET     @MoneyValue = 0.5
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue_1 Decimal(1, 1)
SET     @MoneyValue_1 = 0.5

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(2, 2)
SET     @MoneyValue = 0.05

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(2, 2)
SET     @MoneyValue = 0.05
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue_1 Decimal(2, 2)
SET     @MoneyValue_1 = 0.05

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(4, 4)
SET     @MoneyValue = 0.0005

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(4, 4)
SET     @MoneyValue = 0.0005
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue_1 Decimal(4, 4)
SET     @MoneyValue_1 = 0.0005

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.5

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.5
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue_1 Decimal(2, 1)
SET     @MoneyValue_1 = 1.5

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.05

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.05
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue_1 Decimal(3, 2)
SET     @MoneyValue_1 = 1.05

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.0005

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Sybase.Managed Sybase
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.0005
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue_1 Decimal(5, 4)
SET     @MoneyValue_1 = 1.0005

UPDATE
	[TableWithMoney]
SET
	[MoneyValue] = @MoneyValue
FROM
	[TableWithMoney] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TableWithMoney]
	(
		[ID],
		[MoneyValue]
	)
	VALUES
	(
		@ID,
		@MoneyValue_1
	)
END

