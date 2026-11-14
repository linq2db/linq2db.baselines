-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_IsTemporaryTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [IsTemporaryTable]

