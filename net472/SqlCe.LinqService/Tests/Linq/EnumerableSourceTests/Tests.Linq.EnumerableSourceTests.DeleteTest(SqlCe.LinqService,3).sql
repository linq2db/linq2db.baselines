﻿BeforeExecute
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
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'Janet'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Doe'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT 4 AS [Id]
					UNION ALL
					SELECT 5 AS [Id]) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

BeforeExecute
-- SqlCe

DROP TABLE [TableToInsert]

