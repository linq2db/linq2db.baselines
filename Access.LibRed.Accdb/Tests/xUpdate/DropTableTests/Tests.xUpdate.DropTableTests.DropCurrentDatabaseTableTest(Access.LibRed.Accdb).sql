-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTest]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTest]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

