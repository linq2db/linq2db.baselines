-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue4671EntityTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671EntityTMP] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [Issue4671EntityTMP]

