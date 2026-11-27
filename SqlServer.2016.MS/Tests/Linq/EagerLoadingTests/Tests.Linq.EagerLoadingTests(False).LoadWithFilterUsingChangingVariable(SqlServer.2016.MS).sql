-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [LoadWithFilterRecord]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
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

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
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

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id]
FROM
	[LoadWithFilterRecord] [t1]

