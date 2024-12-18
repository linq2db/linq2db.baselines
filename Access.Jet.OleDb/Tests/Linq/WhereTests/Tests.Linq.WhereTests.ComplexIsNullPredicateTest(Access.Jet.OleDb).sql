BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ComplexPredicate]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [ComplexPredicate]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarWChar -- String
SET     @Value = NULL

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarWChar(5) -- String
SET     @Value = 'other'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value VarWChar(3) -- String
SET     @Value = '123'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value VarWChar(4) -- String
SET     @Value = 'test'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value VarWChar(1) -- String
SET     @Value = '1'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = '123' AND [r].[Value] IS NOT NULL, True, False) = IIF([r].[Value] = '1' AND [r].[Value] IS NOT NULL OR [r].[Value] = 'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> '1' OR [r].[Value] IS NULL), True, False)
ORDER BY
	[r].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ComplexPredicate]

