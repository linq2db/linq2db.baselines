﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [VEMPLOYEE_SCH_SEC]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[VEMPLOYEE_SCH_SEC]', N'U') IS NULL)
	CREATE TABLE [VEMPLOYEE_SCH_SEC]
	(
		[ACTIVE] Bit            NOT NULL,
		[ID]     Int            NOT NULL,
		[NAME]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[VEMPLOYEE_SCHDL_PERM]', N'U') IS NULL)
	CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
	(
		[ID]        Int NOT NULL,
		[IS_ACTIVE] Bit NOT NULL,

		CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[ess].[ID]
FROM
	[VEMPLOYEE_SCH_SEC] [ess]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[VEMPLOYEE_SCHDL_PERM] [y]
		WHERE
			[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = 1
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[ess].[ID]
FROM
	[VEMPLOYEE_SCH_SEC] [ess]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [VEMPLOYEE_SCH_SEC]

