BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly VarWChar(6) -- String
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
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly VarWChar(6) -- String
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
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[e].[Id],
	[e].[AOnly],
	IIF(False, 0, NULL),
	IIF(False, '', NULL)
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	[e_1].[Id],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

