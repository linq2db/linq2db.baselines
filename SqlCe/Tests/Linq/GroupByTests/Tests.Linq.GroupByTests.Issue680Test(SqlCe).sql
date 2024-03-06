BeforeExecute
-- SqlCe

DROP TABLE [Issue680Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue680Table]
(
	[TimeStamp] DateTime NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	Count(CASE
		WHEN [g_1].[TimeStamp] > @DateTime
			THEN 1
		ELSE NULL
	END) as [Count_1]
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- SqlCe

DROP TABLE [Issue680Table]

