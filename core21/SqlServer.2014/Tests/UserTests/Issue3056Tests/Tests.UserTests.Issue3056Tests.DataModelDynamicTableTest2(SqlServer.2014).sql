BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[dbo].[Table_3056]', N'U') IS NOT NULL)
	DROP TABLE [dbo].[Table_3056]

