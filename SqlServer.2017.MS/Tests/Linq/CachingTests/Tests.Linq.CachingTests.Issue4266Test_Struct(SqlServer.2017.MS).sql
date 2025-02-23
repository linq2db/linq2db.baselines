BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

CREATE TYPE IntTableType AS TABLE(Id INT)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF EXISTS (SELECT * FROM sys.types WHERE name = 'IntTableType') DROP TYPE IntTableType

