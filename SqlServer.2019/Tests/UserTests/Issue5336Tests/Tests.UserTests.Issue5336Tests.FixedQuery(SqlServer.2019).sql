-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '02b53be3-858e-40c5-896c-10eb12dee6e2'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '02b53be3-858e-40c5-896c-10eb12dee6e2'
DECLARE @nr Int -- Int32
SET     @nr = 5

SELECT TOP (1)
	[x].[Id],
	[x].[Number],
	[x].[Test]
FROM
	[TestDtoWithPks] [x]
WHERE
	[x].[Id] = @id AND [x].[Number] = @nr

