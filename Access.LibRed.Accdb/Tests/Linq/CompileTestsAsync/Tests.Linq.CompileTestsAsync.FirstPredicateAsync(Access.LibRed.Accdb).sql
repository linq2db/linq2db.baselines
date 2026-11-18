-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 2

SELECT TOP 1
	CVar(@p),
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

