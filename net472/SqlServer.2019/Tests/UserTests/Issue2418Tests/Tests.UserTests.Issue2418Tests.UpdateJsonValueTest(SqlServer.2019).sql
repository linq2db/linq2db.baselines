BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [TestTable]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Json] NVarChar(Max)        NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
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

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id_1 UniqueIdentifier -- Guid
SET     @Id_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (@take) 
	[x].[Id], 
	[x].[Json]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] = @Id_1

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

UPDATE
	[o]
SET
	[o].[Json] = JSON_MODIFY(JSON_MODIFY([o].[Json], N'$.Number', N'10'), N'$.String', N'Test1')
FROM
	[TestTable] [o]
WHERE
	[o].[Id] = @Id

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id_1 UniqueIdentifier -- Guid
SET     @Id_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (@take) 
	[x].[Id], 
	[x].[Json]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] = @Id_1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TestTable]

