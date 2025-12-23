-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @ID Int -- Int32
SET     @ID = 1

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(1, 1)
SET     @MoneyValue = 0.5
DECLARE @ID Int -- Int32
SET     @ID = 2

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(2, 2)
SET     @MoneyValue = 0.05
DECLARE @ID Int -- Int32
SET     @ID = 3

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(4, 4)
SET     @MoneyValue = 0.0005
DECLARE @ID Int -- Int32
SET     @ID = 4

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(2, 1)
SET     @MoneyValue = 1.5
DECLARE @ID Int -- Int32
SET     @ID = 5

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.05
DECLARE @ID Int -- Int32
SET     @ID = 6

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
		@MoneyValue
	)
END

-- SqlServer.2005
DECLARE @ID Int -- Int32
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

-- SqlServer.2005
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.0005
DECLARE @ID Int -- Int32
SET     @ID = 7

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
		@MoneyValue
	)
END

