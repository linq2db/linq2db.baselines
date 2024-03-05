BeforeExecute
-- SqlServer.2017
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe'

SELECT
	[n].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [n]([item])

BeforeExecute
-- SqlServer.2017
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe1'

SELECT
	[n].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [n]([item])

