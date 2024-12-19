BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ComplexPredicate]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ComplexPredicate]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'other'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(3) -- String
SET     @Value = '123'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(4) -- String
SET     @Value = 'test'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value NVarChar(1) -- String
SET     @Value = '1'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = '123', True, False) = IIF([r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL), True, False)
ORDER BY
	[r].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ComplexPredicate]

