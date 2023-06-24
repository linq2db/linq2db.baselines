BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [IsNullOrEmptyTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(3) -- String
SET     @Value = '   '

INSERT INTO [IsNullOrEmptyTable]
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
DECLARE @Value NVarChar -- String
SET     @Value = ''

INSERT INTO [IsNullOrEmptyTable]
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
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	Len([p].[Value]) = 0

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [IsNullOrEmptyTable]

