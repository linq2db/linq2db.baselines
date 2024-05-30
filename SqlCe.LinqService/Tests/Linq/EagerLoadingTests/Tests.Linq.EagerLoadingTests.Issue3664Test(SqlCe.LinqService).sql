BeforeExecute
-- SqlCe

DROP TABLE [Test3664]

BeforeExecute
-- SqlCe

CREATE TABLE [Test3664]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Test3664] PRIMARY KEY ([Id])
)

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

DROP TABLE [Test3664Item]

BeforeExecute
-- SqlCe

CREATE TABLE [Test3664Item]
(
	[Id]     Int NOT NULL,
	[TestId] Int NOT NULL,

	CONSTRAINT [PK_Test3664Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @TestId Int -- Int32
SET     @TestId = 1

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(
	@Id,
	@TestId
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

BeforeExecute
-- SqlCe

DROP TABLE [Test3664Item]

BeforeExecute
-- SqlCe

DROP TABLE [Test3664]

