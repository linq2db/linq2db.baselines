-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_44b5cb4c62d3]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_44b5cb4c62d3](Id, Data)

-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_44b5cb4c62d3] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_44b5cb4c62d3]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_44b5cb4c62d3]

