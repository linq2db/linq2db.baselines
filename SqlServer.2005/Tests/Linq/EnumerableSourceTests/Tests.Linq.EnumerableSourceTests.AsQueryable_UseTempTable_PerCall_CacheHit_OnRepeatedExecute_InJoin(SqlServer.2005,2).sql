-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_53c211b360c5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_53c211b360c5](Id, Data)

-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_53c211b360c5] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_53c211b360c5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_53c211b360c5]

