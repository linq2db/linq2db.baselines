-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'f759721d-ba27-4084-a1f0-9a18b775b32c'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'f759721d-ba27-4084-a1f0-9a18b775b32c' AND
	[t1].[Number] = 5

