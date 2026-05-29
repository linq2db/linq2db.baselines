-- SqlServer.2016

SELECT
	[c_1].[Id]
FROM
	[Issue5355Customers] [c_1]
		INNER JOIN [Issue5355LicenseProfiles] [a_Profile] ON [c_1].[ProfileId] = [a_Profile].[Id]
WHERE
	[a_Profile].[License] IN (N'12345')
ORDER BY
	[c_1].[Id]



