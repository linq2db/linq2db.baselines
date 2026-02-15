-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b9194a3c-8725-4403-91ae-da4bec3747a1'
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

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'b9194a3c-8725-4403-91ae-da4bec3747a1' AND
	[t1].[Number] = 5

