BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

DROP TABLE IF EXISTS [dbo].[Table_3056]

