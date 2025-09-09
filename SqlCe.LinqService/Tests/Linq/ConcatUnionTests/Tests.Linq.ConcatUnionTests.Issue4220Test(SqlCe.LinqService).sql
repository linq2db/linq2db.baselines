BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)

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

