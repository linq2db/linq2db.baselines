﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Insert_Null_Table') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Null_Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Insert_Null_Table') IS NULL)
	EXECUTE('
		CREATE TABLE [PR_1598_Insert_Null_Table]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL,
			[Age]  Int               NULL,

			CONSTRAINT [PK_PR_1598_Insert_Null_Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Tommy'

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
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Insert_Null_Table') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Null_Table]

