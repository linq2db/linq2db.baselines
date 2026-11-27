-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [LoadWithFilterRecord]
(
	[Id]
)
VALUES
(
	@Id
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = @id

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = @id

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

