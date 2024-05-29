BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3834Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3834Table]
(
	[Id]       INTEGER       NOT NULL,
	[Nesto]    NVarChar(255) NOT NULL,
	[Nest]     NVarChar(255) NOT NULL,
	[WhatSov]  NVarChar(255) NOT NULL,
	[Co2grund] NVarChar(255)     NULL,
	[Co2aend]  NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3834Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 123
DECLARE @Nesto NVarChar(5) -- String
SET     @Nesto = 'Nesto'
DECLARE @Nest NVarChar(6) -- String
SET     @Nest = 'Nessss'
DECLARE @Whatsov NVarChar(7) -- String
SET     @Whatsov = 'Whatsov'
DECLARE @Co2Grund NVarChar(3) -- String
SET     @Co2Grund = 'xxx'
DECLARE @Co2Aend NVarChar(4) -- String
SET     @Co2Aend = 'What'

INSERT INTO [Issue3834Table]
(
	[Id],
	[Nesto],
	[Nest],
	[WhatSov],
	[Co2grund],
	[Co2aend]
)
VALUES
(
	@Id,
	@Nesto,
	@Nest,
	@Whatsov,
	@Co2Grund,
	@Co2Aend
)
RETURNING
	[Issue3834Table].[Id],
	[Issue3834Table].[Nesto],
	[Issue3834Table].[Nest],
	[Issue3834Table].[WhatSov],
	[Issue3834Table].[Co2grund],
	[Issue3834Table].[Co2aend]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3834Table]

