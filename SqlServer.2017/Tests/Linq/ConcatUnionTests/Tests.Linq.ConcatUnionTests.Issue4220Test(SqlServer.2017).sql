-- SqlServer.2017
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

-- SqlServer.2017
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

-- SqlServer.2017

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

