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
SELECT 2,'Janet' UNION ALL
SELECT 3,'Doe'

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 2 AS [Id], 'Janet' AS [Value]
				UNION ALL
				SELECT 3 AS [Id], 'Doe' AS [Value]) [t1]
		WHERE
			[t].[Id] = [t1].[Id] AND ([t].[Value] = [t1].[Value] OR [t].[Value] IS NULL AND [t1].[Value] IS NULL)
	)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

