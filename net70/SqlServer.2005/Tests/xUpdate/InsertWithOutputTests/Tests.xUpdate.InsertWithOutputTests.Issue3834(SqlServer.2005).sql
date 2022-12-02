BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3834Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3834Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3834Table]', N'U') IS NULL)
	CREATE TABLE [Issue3834Table]
	(
		[Id]       Int            NOT NULL,
		[Nesto]    NVarChar(4000) NOT NULL,
		[Nest]     NVarChar(4000) NOT NULL,
		[WhatSov]  NVarChar(4000) NOT NULL,
		[Co2grund] NVarChar(4000)     NULL,
		[Co2aend]  NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3834Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 123
DECLARE @Nesto NVarChar(4000) -- String
SET     @Nesto = N'Nesto'
DECLARE @Nest NVarChar(4000) -- String
SET     @Nest = N'Nessss'
DECLARE @Whatsov NVarChar(4000) -- String
SET     @Whatsov = N'Whatsov'
DECLARE @Co2Grund NVarChar(4000) -- String
SET     @Co2Grund = N'xxx'
DECLARE @Co2Aend NVarChar(4000) -- String
SET     @Co2Aend = N'What'

INSERT INTO [Issue3834Table]
(
	[Id],
	[Nesto],
	[Nest],
	[WhatSov],
	[Co2grund],
	[Co2aend]
)
OUTPUT
	[INSERTED].[Id],
	[INSERTED].[Nesto],
	[INSERTED].[Nest],
	[INSERTED].[WhatSov],
	[INSERTED].[Co2grund],
	[INSERTED].[Co2aend]
VALUES
(
	@Id,
	@Nesto,
	@Nest,
	@Whatsov,
	@Co2Grund,
	@Co2Aend
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3834Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3834Table]

