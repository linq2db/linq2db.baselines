-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '62638428-f37a-4851-8ae1-ea9e4f7a25b5'
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

-- SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '62638428-f37a-4851-8ae1-ea9e4f7a25b5' AND
	[t1].[Number] = 5

