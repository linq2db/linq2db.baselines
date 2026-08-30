-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @id_1  -- Int32
SET     @id_1 = 2
DECLARE @id_2  -- Int32
SET     @id_2 = 3

SELECT
	CASE
		WHEN [m_2].[Id] IS NOT NULL THEN [m_2].[Value_1]
		ELSE 'Unknown'
	END
FROM
	[DetailClass] [d]
		LEFT JOIN (
			SELECT
				[m_1].[Id],
				Coalesce([m_1].[Value], '') || '!' as [Value_1]
			FROM
				[MasterClass] [m_1]
			WHERE
				NOT [m_1].[IsDeleted]
		) [m_2] ON [m_2].[Id] = [d].[MasterId]
WHERE
	[d].[Id] = @id
UNION ALL
SELECT
	CASE
		WHEN [m_4].[Id] IS NOT NULL THEN [m_4].[Value_1]
		ELSE 'Unknown'
	END
FROM
	[DetailClass] [d_1]
		LEFT JOIN (
			SELECT
				[m_3].[Id],
				Coalesce([m_3].[Value], '') || '!' as [Value_1]
			FROM
				[MasterClass] [m_3]
			WHERE
				NOT [m_3].[IsDeleted]
		) [m_4] ON [m_4].[Id] = [d_1].[MasterId]
WHERE
	[d_1].[Id] = @id_1
UNION ALL
SELECT
	CASE
		WHEN [m_6].[Id] IS NOT NULL THEN [m_6].[Value_1]
		ELSE 'Unknown'
	END
FROM
	[DetailClass] [d_2]
		LEFT JOIN (
			SELECT
				[m_5].[Id],
				Coalesce([m_5].[Value], '') || '!' as [Value_1]
			FROM
				[MasterClass] [m_5]
			WHERE
				NOT [m_5].[IsDeleted]
		) [m_6] ON [m_6].[Id] = [d_2].[MasterId]
WHERE
	[d_2].[Id] = @id_2

