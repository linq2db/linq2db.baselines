-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) = 'x'

