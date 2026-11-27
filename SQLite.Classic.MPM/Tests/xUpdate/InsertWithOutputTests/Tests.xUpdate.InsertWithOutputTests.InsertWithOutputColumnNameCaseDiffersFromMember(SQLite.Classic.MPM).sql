-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
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

INSERT INTO [OutputColumnRenamedTable]
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
	[OutputColumnRenamedTable].[Id],
	[OutputColumnRenamedTable].[Nesto],
	[OutputColumnRenamedTable].[Nest],
	[OutputColumnRenamedTable].[WhatSov],
	[OutputColumnRenamedTable].[Co2grund],
	[OutputColumnRenamedTable].[Co2aend]

