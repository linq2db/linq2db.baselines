-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 3

SELECT TOP @take
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

