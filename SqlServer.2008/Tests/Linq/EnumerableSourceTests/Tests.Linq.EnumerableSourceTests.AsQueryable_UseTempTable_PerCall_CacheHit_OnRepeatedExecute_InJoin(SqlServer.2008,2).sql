-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_7bd54114e879]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_7bd54114e879](Id, Data)

-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_7bd54114e879] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_7bd54114e879]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7bd54114e879]

