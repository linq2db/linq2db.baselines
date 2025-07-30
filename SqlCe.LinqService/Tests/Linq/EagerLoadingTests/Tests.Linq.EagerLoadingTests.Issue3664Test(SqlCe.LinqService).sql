BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

