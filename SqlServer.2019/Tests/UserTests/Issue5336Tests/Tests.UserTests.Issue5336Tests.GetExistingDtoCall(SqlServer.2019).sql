-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7f0427fd-032b-4233-9790-9fa36ea47cb6'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7f0427fd-032b-4233-9790-9fa36ea47cb6'
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

