BeforeExecute
-- SqlCe

CREATE TABLE [Issue3323Table]
(
	[Id]       Int           NOT NULL,
	[FistName] NVarChar(255)     NULL,
	[LastName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName]
)
VALUES
(
	1,
	'one',
	'two'
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FistName] + ' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[FistName] + ' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3323Table]

