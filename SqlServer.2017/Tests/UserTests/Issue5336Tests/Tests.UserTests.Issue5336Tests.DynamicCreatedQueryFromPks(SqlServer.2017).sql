-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '9f893de6-8d7d-4eab-99ec-28c00675782f'
DECLARE @Number Int -- Int32
SET     @Number = 5
DECLARE @Test NVarChar(4000) -- String
SET     @Test = N'aaa'

INSERT INTO [TestDtoWithPks]
(
	[Id],
	[Number],
	[Test]
)
VALUES
(
	@Id,
	@Number,
	@Test
)

-- SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '9f893de6-8d7d-4eab-99ec-28c00675782f' AND
	[t1].[Number] = 5

