-- SqlServer.2012.MS SqlServer.2012

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

-- SqlServer.2012.MS SqlServer.2012

CREATE TYPE IntTableType AS TABLE(Id INT)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @persons IntTableType -- Structured -- Object
SET     @persons = IntTableType
DECLARE @p IntTableType -- Structured -- Object
SET     @p = IntTableType

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (select * from @persons) AND [p].[PersonID] IN (select * from @p)
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @persons IntTableType -- Structured -- Object
SET     @persons = IntTableType
DECLARE @p IntTableType -- Structured -- Object
SET     @p = IntTableType

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (select * from @persons) AND [p].[PersonID] IN (select * from @p)
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

