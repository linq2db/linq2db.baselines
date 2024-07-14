BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3847_OutfeedTransportOrder]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- DateTime
SET     @p = NULL
DECLARE @p_1  -- DateTime
SET     @p_1 = NULL

SELECT
	[outfeed].[Id],
	CASE
		WHEN [t2].[Value_1] IS NOT NULL THEN [t2].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t4].[Value_1] IS NOT NULL THEN [t4].[Value_1]
		ELSE @p_1
	END
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		LEFT JOIN (
			SELECT
				[t1].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t1].[Key] ORDER BY [t1].[Key]) as [rn],
				[t1].[Key] as [Key_1]
			FROM
				(
					SELECT NULL [Key], NULL [Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(X'7EA712BFC4E1864CA9BA68D358883556','2024-07-14 17:41:54.451'),
						(X'4FF36728C002FF4490549E5F866353EB','2024-07-14 17:41:54.451'),
						(X'1BF543D355A4ED4AA11CEF6721D303B9','2024-07-14 17:41:54.451')
					) [t1]
		) [t2] ON [t2].[Key_1] = [outfeed].[Id] AND [t2].[rn] <= 1
		LEFT JOIN (
			SELECT
				[t3].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t3].[Key] ORDER BY [t3].[Key]) as [rn],
				[t3].[Key] as [Key_1]
			FROM
				(
					SELECT NULL [Key], NULL [Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(X'E1339C7C2631B14EA4C7C45BC52584C3','2024-07-14 17:41:54.451'),
						(X'49358623A5806F4E8B93F00BCF9291B7','2024-07-14 17:41:54.451')
					) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

