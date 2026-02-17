-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '44c93608-418b-4b21-9fef-297b05047623'
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
SET     @Id = '44c93608-418b-4b21-9fef-297b05047623'
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

