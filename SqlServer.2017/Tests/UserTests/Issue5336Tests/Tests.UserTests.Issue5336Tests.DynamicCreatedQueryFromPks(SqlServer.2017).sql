-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0ab795f3-a856-4d69-b744-2d8e4df97080'
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
	[t1].[Id] = '0ab795f3-a856-4d69-b744-2d8e4df97080' AND
	[t1].[Number] = 5

