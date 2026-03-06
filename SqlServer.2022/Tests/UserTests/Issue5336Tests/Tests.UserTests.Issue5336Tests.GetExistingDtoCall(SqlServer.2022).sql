-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd53e71a5-a3f4-4af4-b27f-c89650157a5f'
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

-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd53e71a5-a3f4-4af4-b27f-c89650157a5f'
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

