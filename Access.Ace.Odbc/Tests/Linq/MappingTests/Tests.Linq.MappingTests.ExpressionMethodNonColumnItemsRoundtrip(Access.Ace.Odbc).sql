-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Items NVarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO [ExpressionMethodItemsEntity]
(
	[Id],
	[Items]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[ExpressionMethodItemsEntity] [t1]

