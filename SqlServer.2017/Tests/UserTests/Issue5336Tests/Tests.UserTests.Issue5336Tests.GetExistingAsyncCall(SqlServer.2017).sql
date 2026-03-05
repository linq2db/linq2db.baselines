-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '15f17aed-8ae6-4341-b0f5-4b1d4178c037'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '15f17aed-8ae6-4341-b0f5-4b1d4178c037'
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

