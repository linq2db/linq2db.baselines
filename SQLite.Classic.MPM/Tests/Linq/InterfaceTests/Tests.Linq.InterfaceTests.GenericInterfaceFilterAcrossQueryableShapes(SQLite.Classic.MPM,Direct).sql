-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id]
FROM
	[Member] [m_1]
		LEFT JOIN [MembershipProfile] [a_Profile] ON [m_1].[ProfileId] = [a_Profile].[Id]
WHERE
	[a_Profile].[License] IN ('12345')
ORDER BY
	[m_1].[Id]

