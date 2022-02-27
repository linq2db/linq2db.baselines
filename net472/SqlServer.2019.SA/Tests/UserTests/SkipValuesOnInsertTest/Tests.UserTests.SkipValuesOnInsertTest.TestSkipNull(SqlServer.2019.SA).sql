﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [PR_1598_Insert_Null_Table]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Insert_Null_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'

INSERT INTO [PR_1598_Insert_Null_Table]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [PR_1598_Insert_Null_Table]

