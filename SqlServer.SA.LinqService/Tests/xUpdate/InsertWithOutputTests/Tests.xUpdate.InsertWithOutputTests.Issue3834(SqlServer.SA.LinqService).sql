BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
	INSERTED.[Id],
	INSERTED.[Nesto],
	INSERTED.[Nest],
	INSERTED.[WhatSov],
	INSERTED.[Co2grund],
	INSERTED.[Co2aend]
VALUES
(
	@Id,
	@Nesto,
	@Nest,
	@Whatsov,
	@Co2Grund,
	@Co2Aend
)

