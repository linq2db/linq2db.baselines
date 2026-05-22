-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_d989ef1a603e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d989ef1a603e](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_d989ef1a603e] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_d989ef1a603e]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d989ef1a603e]

