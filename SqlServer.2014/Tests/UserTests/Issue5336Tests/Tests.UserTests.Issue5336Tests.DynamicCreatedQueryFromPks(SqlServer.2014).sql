-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ba70c1fd-a41b-4d02-bea4-71ad9e5a3f28'
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

-- SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'ba70c1fd-a41b-4d02-bea4-71ad9e5a3f28' AND
	[t1].[Number] = 5

