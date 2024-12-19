BeforeExecute
-- SqlCe

DROP TABLE [Issue3360Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3360Table]
(
	[Id]  Int      NOT NULL,
	[Str] NVarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	CAST('str1' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	CAST('str2' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3360Table]

