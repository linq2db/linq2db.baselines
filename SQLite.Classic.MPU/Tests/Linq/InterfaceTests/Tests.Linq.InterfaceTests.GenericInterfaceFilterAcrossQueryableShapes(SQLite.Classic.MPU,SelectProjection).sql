-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_Member].[Id]
FROM
	[MemberShare] [m_1]
		LEFT JOIN [Member] [a_Member] ON [m_1].[MemberId] = [a_Member].[Id]
		LEFT JOIN [MembershipProfile] [a_Profile] ON [a_Member].[ProfileId] = [a_Profile].[Id]
WHERE
	[a_Profile].[License] IN ('12345')
ORDER BY
	[a_Member].[Id]

