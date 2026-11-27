-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Id],
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[EnumFilterEntity] [p]
WHERE
	[p].[MyEnum2] <> 0

