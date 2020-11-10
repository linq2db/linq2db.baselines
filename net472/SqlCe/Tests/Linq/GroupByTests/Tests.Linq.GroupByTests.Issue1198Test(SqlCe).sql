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
	[Issue1192Table] [t_1]
		LEFT JOIN (
			SELECT
				*
			FROM
				[Issue1192Table] [t]
			WHERE
				[t].[Status] = 3 AND [t].[MyOtherId] = 12
		) [t1] ON 1=1
WHERE
	[t_1].[MyOtherId] = 12

BeforeExecute
-- SqlCe

DROP TABLE [Issue1192Table]

