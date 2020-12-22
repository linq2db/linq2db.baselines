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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	Count(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Issue1192Table] [t]
		WHERE
			[t].[MyOtherId] = 12
	) [t2]
		LEFT JOIN (
			SELECT
				*
			FROM
				[Issue1192Table] [t_1]
			WHERE
				[t_1].[Status] = 3 AND [t_1].[MyOtherId] = 12
		) [t1] ON [t2].[c1] = 1
GROUP BY
	[t2].[c1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1192Table]

