-- SqlServer.Contained SqlServer.2025
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

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[ExpressionMethodItemsEntity] [t1]

