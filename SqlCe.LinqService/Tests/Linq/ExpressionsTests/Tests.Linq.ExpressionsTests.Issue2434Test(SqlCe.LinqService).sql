BeforeExecute
-- SqlCe

DROP TABLE [Issue2434Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2434Table]
(
	[Id]        Int           NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FirstName] + ' ' + [t1].[LastName] as [FullName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] + ' ' + [t1].[LastName]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2434Table]

