-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [LoadWithFilterRecord]
(
	[Id]
)
VALUES
(
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON ([m_1].[Id] = [d].[TestId])
WHERE
	[d].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

