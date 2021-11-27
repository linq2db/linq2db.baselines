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
-- SqlCe

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
-- SqlCe

DROP TABLE [Issue3360Table]

