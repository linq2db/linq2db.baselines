BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly UniVarChar(6) -- String
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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly UniVarChar(6) -- String
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
-- Sybase.Managed Sybase (asynchronously)

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

