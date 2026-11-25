-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TempIdentityRowTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRowTMP] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TempIdentityRowTMP]

