-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	CASE WHEN Coalesce([t1].[FirstName], '') IS NULL OR ' ' IS NULL OR Coalesce([t1].[LastName], '') IS NULL THEN NULL ELSE Coalesce([t1].[FirstName], '') + ' ' + Coalesce([t1].[LastName], '') END
FROM
	[Issue2434Table] [t1]
ORDER BY
	CASE WHEN Coalesce([t1].[FirstName], '') IS NULL OR ' ' IS NULL OR Coalesce([t1].[LastName], '') IS NULL THEN NULL ELSE Coalesce([t1].[FirstName], '') + ' ' + Coalesce([t1].[LastName], '') END

