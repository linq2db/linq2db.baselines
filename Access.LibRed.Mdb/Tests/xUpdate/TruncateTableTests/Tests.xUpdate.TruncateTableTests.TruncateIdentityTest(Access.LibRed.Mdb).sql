-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestIdTrun]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM [TestIdTrun]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1, 1)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestIdTrun]

