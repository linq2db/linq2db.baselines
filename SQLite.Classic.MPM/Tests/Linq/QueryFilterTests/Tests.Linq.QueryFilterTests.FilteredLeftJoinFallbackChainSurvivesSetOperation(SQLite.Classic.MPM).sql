-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @id_1  -- Int32
SET     @id_1 = 2
DECLARE @id_2  -- Int32
SET     @id_2 = 3

SELECT
	CASE
		WHEN [m_2].[Id] IS NOT NULL THEN [m_2].[Value_1]
		WHEN [i_1].[Id] IS NOT NULL THEN [i_1].[Value_1]
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
		LEFT JOIN (
			SELECT
				[i].[Id],
				[i].[MasterId],
				Coalesce([i].[Value], '') || '?' as [Value_1]
			FROM
				[InfoClass] [i]
			WHERE
				NOT [i].[IsDeleted]
		) [i_1] ON [i_1].[MasterId] = [d].[MasterId] OR [i_1].[MasterId] IS NULL AND [d].[MasterId] IS NULL
WHERE
	[d].[Id] = @id
UNION ALL
SELECT
	CASE
		WHEN [m_4].[Id] IS NOT NULL THEN [m_4].[Value_1]
		WHEN [i_3].[Id] IS NOT NULL THEN [i_3].[Value_1]
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
		LEFT JOIN (
			SELECT
				[i_2].[Id],
				[i_2].[MasterId],
				Coalesce([i_2].[Value], '') || '?' as [Value_1]
			FROM
				[InfoClass] [i_2]
			WHERE
				NOT [i_2].[IsDeleted]
		) [i_3] ON [i_3].[MasterId] = [d_1].[MasterId] OR [i_3].[MasterId] IS NULL AND [d_1].[MasterId] IS NULL
WHERE
	[d_1].[Id] = @id_1
UNION ALL
SELECT
	CASE
		WHEN [m_6].[Id] IS NOT NULL THEN [m_6].[Value_1]
		WHEN [i_5].[Id] IS NOT NULL THEN [i_5].[Value_1]
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
		LEFT JOIN (
			SELECT
				[i_4].[Id],
				[i_4].[MasterId],
				Coalesce([i_4].[Value], '') || '?' as [Value_1]
			FROM
				[InfoClass] [i_4]
			WHERE
				NOT [i_4].[IsDeleted]
		) [i_5] ON [i_5].[MasterId] = [d_2].[MasterId] OR [i_5].[MasterId] IS NULL AND [d_2].[MasterId] IS NULL
WHERE
	[d_2].[Id] = @id_2

