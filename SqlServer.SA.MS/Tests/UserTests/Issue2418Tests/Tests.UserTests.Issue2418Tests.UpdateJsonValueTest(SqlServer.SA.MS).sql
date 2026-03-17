-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Json NVarChar(4000) -- String
SET     @Json = N'{"Number":1,"String":"Test"}'

INSERT INTO [TestTable]
(
	[Id],
	[Json]
)
VALUES
(
	@Id,
	@Json
)

-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (1)
	[x].[Id],
	[x].[Json]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] = @Id

-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

UPDATE
	[TestTable]
SET
	[Json] = JSON_MODIFY(JSON_MODIFY([TestTable].[Json], N'$.Number', 10), N'$.String', N'Test1')
WHERE
	[TestTable].[Id] = @Id

-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (1)
	[x].[Id],
	[x].[Json]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] = @Id

