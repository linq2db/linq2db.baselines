BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
SELECT 1,'GrandChild','Tom','Black'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

