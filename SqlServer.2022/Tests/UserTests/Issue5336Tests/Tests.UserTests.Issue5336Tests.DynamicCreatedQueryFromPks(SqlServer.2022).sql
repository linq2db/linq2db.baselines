-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '724bf112-06d4-40ae-a12c-72399a7c4dab'
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
	[t1].[Id] = '724bf112-06d4-40ae-a12c-72399a7c4dab' AND
	[t1].[Number] = 5

