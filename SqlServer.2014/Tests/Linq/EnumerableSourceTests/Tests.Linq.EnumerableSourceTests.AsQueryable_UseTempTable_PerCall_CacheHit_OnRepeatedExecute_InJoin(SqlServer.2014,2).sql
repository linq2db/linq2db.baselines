-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_08aa4db28995]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_08aa4db28995](Id, Data)

-- SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_08aa4db28995] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_08aa4db28995]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_08aa4db28995]

