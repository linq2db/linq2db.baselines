-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_44aefe639452]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_44aefe639452](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_44aefe639452] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_44aefe639452]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_44aefe639452]

