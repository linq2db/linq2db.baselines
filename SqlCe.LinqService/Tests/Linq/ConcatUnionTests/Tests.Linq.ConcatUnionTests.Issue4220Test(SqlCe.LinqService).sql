BeforeExecute
-- SqlCe

DROP TABLE [ConcreteA]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcreteA]
(
	[Id]    Int           NOT NULL,
	[AOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ConcreteB]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcreteB]
(
	[Id]    Int           NOT NULL,
	[BOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @AOnly NVarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO [ConcreteA]
(
	[Id],
	[AOnly]
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BOnly NVarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO [ConcreteB]
(
	[Id],
	[BOnly]
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- SqlCe

SELECT
	[e].[Id],
	[e].[AOnly],
	NULL as [Id_1],
	NULL as [BOnly]
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	NULL as [Id],
	NULL as [AOnly],
	[e_1].[Id] as [Id_1],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

BeforeExecute
-- SqlCe

DROP TABLE [ConcreteB]

BeforeExecute
-- SqlCe

DROP TABLE [ConcreteA]

