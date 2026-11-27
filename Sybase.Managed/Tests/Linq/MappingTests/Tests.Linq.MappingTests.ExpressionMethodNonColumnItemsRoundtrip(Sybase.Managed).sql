-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Items UniVarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO [ExpressionMethodItemsEntity]
(
	[Id],
	[Items]
)
VALUES
(
	@Id,
	@Items
)

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[ExpressionMethodItemsEntity] [t1]

