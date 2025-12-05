-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe'

SELECT
	[n].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [n]([item])

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe1'

SELECT
	[n].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [n]([item])

