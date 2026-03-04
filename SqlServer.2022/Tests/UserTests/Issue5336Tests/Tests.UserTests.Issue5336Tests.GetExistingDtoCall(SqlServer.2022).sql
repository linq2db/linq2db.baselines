-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ac715a17-0e5b-41e3-bc2e-1f0ce5bf75ee'
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
SET     @Id = 'ac715a17-0e5b-41e3-bc2e-1f0ce5bf75ee'
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

