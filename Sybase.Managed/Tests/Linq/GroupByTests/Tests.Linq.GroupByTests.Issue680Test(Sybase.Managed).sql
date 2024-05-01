BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue680Table') IS NOT NULL)
	DROP TABLE [Issue680Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue680Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue680Table]
		(
			[TimeStamp] DateTime NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	COUNT(CASE
		WHEN [g_1].[TimeStamp] > @DateTime THEN 1
		ELSE NULL
	END)
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue680Table') IS NOT NULL)
	DROP TABLE [Issue680Table]

