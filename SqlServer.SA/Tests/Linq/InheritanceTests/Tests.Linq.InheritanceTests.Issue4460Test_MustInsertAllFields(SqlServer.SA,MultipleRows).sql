﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(1,N'GrandChild',N'Tom',N'Black')

BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

