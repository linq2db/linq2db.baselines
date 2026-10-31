-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableTwos]



-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableOnes]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (DbType = DateTime), @p3='?' (DbType = DateTime), @p4='?' (Size = 3), @p5='?' (DbType = DateTime)

INSERT INTO "Issue6181TableOnes" ("Id", "ChainedOn", "CreatedOn", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 3), @p3='?' (DbType = DateTime), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "ChainedDate", "Code", "FromDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 3), @p3='?' (DbType = DateTime), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "ChainedDate", "Code", "FromDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


-- SQLite.MS SQLite
DECLARE @since  -- DateTime
SET     @since = '2019-12-31 11:00:00.000'

SELECT
	[g_1].[Code],
	COUNT(*)
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [q].[Code] ORDER BY [t1_1].[Name], strftime('%Y-%m-%d %H:%M:%f', [t1].[CreatedOn]) > strftime('%Y-%m-%d %H:%M:%f', [q].[ToDate]) OR [t1].[CreatedOn] IS NULL OR [q].[ToDate] IS NULL, [t1_1].[FromDate] DESC) as [RowNumValidity],
			[q].[TableOneId],
			[q].[Code]
		FROM
			[Issue6181TableTwos] [q]
				LEFT JOIN [Issue6181TableOnes] [t1] ON [q].[TableOneId] = [t1].[Id]
				LEFT JOIN [Issue6181TableOnes] [t1_1] ON [q].[TableOneId] = [t1_1].[Id]
		WHERE
			[t1].[Name] = 'ONE' AND strftime('%Y-%m-%d %H:%M:%f', [t1].[CreatedOn]) >= strftime('%Y-%m-%d %H:%M:%f', @since) AND
			strftime('%Y-%m-%d %H:%M:%f', [t1].[CreatedOn]) >= strftime('%Y-%m-%d %H:%M:%f', [t1_1].[CreatedOn])
	) [g_1]
WHERE
	[g_1].[RowNumValidity] = 1
GROUP BY
	[g_1].[TableOneId],
	[g_1].[Code]



