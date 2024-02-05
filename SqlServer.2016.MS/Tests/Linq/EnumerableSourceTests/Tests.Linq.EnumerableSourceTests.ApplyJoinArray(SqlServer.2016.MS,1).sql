BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe'

SELECT
	[t1].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [t1]([item])

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe1'

SELECT
	[t1].[item]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			([p].[FirstName]), ([p].[LastName]), (N'John'), (@doe)
		) [t1]([item])

