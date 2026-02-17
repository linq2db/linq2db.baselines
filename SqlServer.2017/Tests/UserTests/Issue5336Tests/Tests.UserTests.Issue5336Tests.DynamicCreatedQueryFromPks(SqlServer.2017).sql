-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b9d8ae6d-0e97-4d5e-ad1a-5fb293533615'
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
	[t1].[Id] = 'b9d8ae6d-0e97-4d5e-ad1a-5fb293533615' AND
	[t1].[Number] = 5

