-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TYPE IntTableType AS TABLE(Id INT)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @persons IntTableType -- Structured -- Object
SET     @persons = IntTableType
DECLARE @cond IntTableType -- Structured -- Object
SET     @cond = IntTableType

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (select * from @persons) AND [p].[PersonID] IN (select * from @cond)
ORDER BY
	[p].[PersonID]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @persons IntTableType -- Structured -- Object
SET     @persons = IntTableType
DECLARE @cond IntTableType -- Structured -- Object
SET     @cond = IntTableType

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (select * from @persons) AND [p].[PersonID] IN (select * from @cond)
ORDER BY
	[p].[PersonID]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

