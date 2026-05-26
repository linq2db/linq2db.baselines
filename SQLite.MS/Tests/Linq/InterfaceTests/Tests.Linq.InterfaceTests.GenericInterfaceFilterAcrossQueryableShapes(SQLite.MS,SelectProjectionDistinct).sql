-- SQLite.MS SQLite

SELECT
	[m_1].[Id]
FROM
	(
		SELECT DISTINCT
			[a_Member].[Id],
			[a_Member].[ProfileId],
			[a_Member].[Name]
		FROM
			[MemberShare] [x]
				LEFT JOIN [Member] [a_Member] ON [x].[MemberId] = [a_Member].[Id]
	) [m_1]
		LEFT JOIN [MembershipProfile] [a_Profile] ON [m_1].[Id] IS NOT NULL AND [m_1].[ProfileId] = [a_Profile].[Id]
WHERE
	[a_Profile].[License] IN ('12345')
ORDER BY
	[m_1].[Id]

