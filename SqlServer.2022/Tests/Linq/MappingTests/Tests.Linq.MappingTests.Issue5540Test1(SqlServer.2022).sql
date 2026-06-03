-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Items NVarChar(200) -- String
SET     @Items = N'A;B'

INSERT INTO [Issue5540]
(
	[Id],
	[Items]
)
VALUES
(
	@Id,
	@Items
)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[Issue5540] [t1]

