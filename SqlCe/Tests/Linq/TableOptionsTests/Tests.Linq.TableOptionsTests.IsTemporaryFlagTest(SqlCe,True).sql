-- SqlCe

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[IsTemporaryTable] [t1]

-- SqlCe

DROP TABLE [IsTemporaryTable]

