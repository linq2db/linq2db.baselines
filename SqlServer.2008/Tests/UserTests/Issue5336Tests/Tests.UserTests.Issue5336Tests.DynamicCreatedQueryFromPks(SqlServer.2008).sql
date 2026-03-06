-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd5bc2bcd-758a-4cab-9270-8e679d94c7bc'
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

-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'd5bc2bcd-758a-4cab-9270-8e679d94c7bc' AND
	[t1].[Number] = 5

