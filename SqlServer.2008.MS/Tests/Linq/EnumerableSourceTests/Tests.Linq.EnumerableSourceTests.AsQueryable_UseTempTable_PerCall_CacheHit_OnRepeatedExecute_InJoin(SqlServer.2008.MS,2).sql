-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_2856cf4be53b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2856cf4be53b](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_2856cf4be53b] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_2856cf4be53b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_2856cf4be53b]

