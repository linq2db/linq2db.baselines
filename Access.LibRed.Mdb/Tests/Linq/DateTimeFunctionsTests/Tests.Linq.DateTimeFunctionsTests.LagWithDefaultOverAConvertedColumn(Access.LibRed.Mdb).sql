-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @fallback  -- DateTime
SET     @fallback = #2026-05-25 09:00:00#

SELECT
	LAG([r].[Value], 1, CVar(@fallback)) OVER (ORDER BY [r].[Id])
FROM
	[CoarseConvertedRow] [r]
ORDER BY
	[r].[Id]

