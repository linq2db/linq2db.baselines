-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'f21cd85a-a984-448d-bd3c-fb88de255076'
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
	[t1].[Id] = 'f21cd85a-a984-448d-bd3c-fb88de255076' AND
	[t1].[Number] = 5

