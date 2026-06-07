-- Sybase.Managed Sybase

SELECT
	[e].[Req] || '-x'
FROM
	[Concat5530] [e]

-- Sybase.Managed Sybase

SELECT
	CASE WHEN [e].[Opt1] IS NULL THEN NULL ELSE [e].[Req] || '-' || [e].[Opt1] END
FROM
	[Concat5530] [e]

-- Sybase.Managed Sybase

SELECT
	CASE WHEN [e].[Opt1] IS NULL OR [e].[Opt2] IS NULL THEN NULL ELSE [e].[Opt1] || [e].[Opt2] END
FROM
	[Concat5530] [e]

