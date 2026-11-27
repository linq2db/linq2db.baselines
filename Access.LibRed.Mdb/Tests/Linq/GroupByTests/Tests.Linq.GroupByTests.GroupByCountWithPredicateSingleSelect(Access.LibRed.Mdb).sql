-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	COUNT(CASE
		WHEN [g_1].[TimeStamp] > @value THEN 1
		ELSE NULL
	END)
FROM
	[GroupByTimeStampTable] [g_1]
GROUP BY
	[g_1].[TimeStamp]

