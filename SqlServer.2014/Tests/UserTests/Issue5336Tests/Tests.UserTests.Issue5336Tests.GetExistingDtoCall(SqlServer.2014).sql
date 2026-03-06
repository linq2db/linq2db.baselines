-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc18e547-57ab-479e-9e10-32df2890bb85'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc18e547-57ab-479e-9e10-32df2890bb85'
DECLARE @Number Int -- Int32
SET     @Number = 5

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number

