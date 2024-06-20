﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3360Table') IS NOT NULL)
	DROP TABLE [Issue3360Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3360Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3360Table]
		(
			[Id]  Int     NOT NULL,
			[Str] VarChar     NULL,

			CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	'str1'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str2'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	'str2'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str1'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3360Table') IS NOT NULL)
	DROP TABLE [Issue3360Table]

