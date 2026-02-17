-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a9d8c64e-50d9-4187-8e17-5dd839200ed5'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a9d8c64e-50d9-4187-8e17-5dd839200ed5'
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

