BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
SELECT 1,N'GrandChild',N'Tom',N'Black'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

