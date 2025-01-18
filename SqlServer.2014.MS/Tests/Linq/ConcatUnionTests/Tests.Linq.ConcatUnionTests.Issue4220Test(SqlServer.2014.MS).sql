BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @AOnly NVarChar(4000) -- String
SET     @AOnly = N'a only'

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
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BOnly NVarChar(4000) -- String
SET     @BOnly = N'b only'

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[e].[Id],
	[e].[AOnly],
	NULL,
	NULL
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	NULL,
	NULL,
	[e_1].[Id],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

