-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Items NVarChar(200) -- String
SET     @Items = N'A;B'

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

-- SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[ExpressionMethodItemsEntity] [t1]

