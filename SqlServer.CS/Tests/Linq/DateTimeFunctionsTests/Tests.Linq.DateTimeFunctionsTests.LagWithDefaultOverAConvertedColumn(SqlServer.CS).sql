-- SqlServer.CS SqlServer.2025
DECLARE @fallback DateTime
SET     @fallback = DATETIME2FROMPARTS(2026, 5, 25, 9, 0, 0, 0, 7)

SELECT
	LAG([r].[Value], 1, @fallback) OVER (ORDER BY [r].[Id])
FROM
	[CoarseConvertedRow] [r]
ORDER BY
	[r].[Id]

