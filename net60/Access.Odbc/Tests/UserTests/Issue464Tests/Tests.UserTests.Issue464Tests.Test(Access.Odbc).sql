BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

INSERT INTO [Issue464]
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 2

INSERT INTO [Issue464]
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3

INSERT INTO [Issue464]
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
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue464] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue464]

