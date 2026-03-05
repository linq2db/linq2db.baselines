-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '9da21a5c-a015-4f6e-aded-4ecb70cacecc'
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

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '9da21a5c-a015-4f6e-aded-4ecb70cacecc' AND
	[t1].[Number] = 5

