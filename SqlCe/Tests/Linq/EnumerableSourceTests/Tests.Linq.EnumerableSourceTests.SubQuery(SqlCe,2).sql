BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

BeforeExecute
-- SqlCe

CREATE TABLE [TableToInsert]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT 3,'Janet' UNION ALL
SELECT 4,'Doe'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 3 AS [Id], 'Janet' AS [Value]
				UNION ALL
				SELECT 4 AS [Id], 'Doe' AS [Value]) [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

