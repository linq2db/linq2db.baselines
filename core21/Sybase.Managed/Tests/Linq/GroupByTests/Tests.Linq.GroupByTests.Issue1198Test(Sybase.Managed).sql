BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1192Table]
(
	[IdId]      Int NOT NULL,
	[MyOtherId] Int NOT NULL,
	[Status]    Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	(
		SELECT
			Count(*)
		FROM
			[Issue1192Table] [t]
		WHERE
			[t1].[c1] = 1 AND [t].[Status] = 3 AND [t].[MyOtherId] = 12
	)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Issue1192Table] [t_1]
		WHERE
			[t_1].[MyOtherId] = 12
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1192Table]

