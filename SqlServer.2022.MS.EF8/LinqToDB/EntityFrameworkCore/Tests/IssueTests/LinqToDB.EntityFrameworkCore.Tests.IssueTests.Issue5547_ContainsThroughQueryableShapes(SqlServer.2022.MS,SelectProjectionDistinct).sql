-- SqlServer.2022

SELECT
	[c_1].[Id]
FROM
	(
		SELECT DISTINCT
			[a_Customer].[Id],
			[a_Customer].[ProfileId],
			[a_Customer].[Name]
		FROM
			[Issue5547CustomerShares] [x]
				INNER JOIN [Issue5355Customers] [a_Customer] ON [x].[CustomerId] = [a_Customer].[Id]
	) [c_1]
		INNER JOIN [Issue5355LicenseProfiles] [a_Profile] ON [c_1].[ProfileId] = [a_Profile].[Id]
WHERE
	[a_Profile].[License] IN (N'12345')
ORDER BY
	[c_1].[Id]



