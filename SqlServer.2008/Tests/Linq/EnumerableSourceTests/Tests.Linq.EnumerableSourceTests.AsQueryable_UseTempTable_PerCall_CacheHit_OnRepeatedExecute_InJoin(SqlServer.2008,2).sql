-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_adc5efca4ecf]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_adc5efca4ecf](Id, Data)

-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_adc5efca4ecf] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_adc5efca4ecf]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_adc5efca4ecf]

