BeforeExecute
-- SqlCe

DROP TABLE [Issue1192Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1192Table]
(
	[IdId]      Int NOT NULL,
	[MyOtherId] Int NOT NULL,
	[Status]    Int NOT NULL
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END) as [COUNT_1]
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- SqlCe

DROP TABLE [Issue1192Table]

