-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[DateOnlyAsDateTimeRow] [r]
WHERE
	DateAdd(day, 1, [r].[Day]) IN ('2026-06-01', '2026-06-02')

