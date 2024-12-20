BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4723Table1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4723Table1]
(
	[Id]               Int           NOT NULL,
	[ExpressionMethod] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod NVarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4723Table2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4723Table2]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
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
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
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
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO [Issue4723Table2]
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

DROP TABLE [Issue4723Table2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4723Table1]

