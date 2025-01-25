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

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			[r].[Id]
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT 3 AS [Id]
					UNION ALL
					SELECT 4 AS [Id]) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

