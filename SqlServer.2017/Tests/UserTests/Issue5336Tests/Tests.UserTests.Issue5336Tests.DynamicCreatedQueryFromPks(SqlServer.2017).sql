-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b9697776-e129-49b1-8c81-d7c9757a1f1a'
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
	[t1].[Id] = 'b9697776-e129-49b1-8c81-d7c9757a1f1a' AND
	[t1].[Number] = 5

