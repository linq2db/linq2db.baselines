-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

-- Sybase.Managed Sybase
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[LoadWithFilterRecord] [m_1]
		INNER JOIN [LoadWithFilterRecordItem] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

-- Sybase.Managed Sybase
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

