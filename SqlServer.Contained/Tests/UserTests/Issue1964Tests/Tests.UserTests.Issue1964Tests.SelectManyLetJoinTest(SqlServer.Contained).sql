BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[BranchAddress],
	[m_1].[BranchId],
	[m_1].[BranchName],
	[m_1].[BusinessHours],
	[m_1].[PointX],
	[m_1].[PointY],
	[att_1].[BranchPic]
FROM
	[dbo].[BranchInfo] [m_1]
		LEFT JOIN (
			SELECT
				[att].[Url] as [BranchPic],
				[att].[ItemId]
			FROM
				(
					SELECT
						ROW_NUMBER() OVER(PARTITION BY [temp_1].[ItemId] ORDER BY [temp_1].[CreateTime]) as [Index_1],
						[temp_1].[ItemId],
						[temp_1].[Url]
					FROM
						[dbo].[Attachment] [temp_1]
					WHERE
						[temp_1].[Status] = 0 AND [temp_1].[Type] = 2
				) [att]
			WHERE
				[att].[Index_1] = 1
		) [att_1] ON [att_1].[ItemId] = [m_1].[BranchId]
WHERE
	[m_1].[Status] = 0 AND [m_1].[BranchIsShow] = 0

