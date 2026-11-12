-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	COUNT(IIF([g_1].[TimeStamp] > @value, 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

