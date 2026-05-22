-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_f13055543ddd]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f13055543ddd](Id, Data)

-- SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_f13055543ddd] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_f13055543ddd]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_f13055543ddd]

