BeforeExecute
-- SqlServer.2005

CREATE TABLE [dbo].[Table_3056]
(
	[Id]          Int           NOT NULL IDENTITY,
	[Name]        VarChar(100)      NULL,
	[Description] VarChar(500)      NULL,

	CONSTRAINT [PK_Table_3056] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
INSERT BULK [dbo].[Table_3056](Name, Description)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[dbo].[Table_3056]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[Table_3056]

