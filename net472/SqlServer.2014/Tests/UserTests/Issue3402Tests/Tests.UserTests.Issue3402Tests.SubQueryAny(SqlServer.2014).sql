BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit            NOT NULL,
	[ID]     Int            NOT NULL,
	[NAME]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			IIF(EXISTS(
				SELECT
					*
				FROM
					[VEMPLOYEE_SCHDL_PERM] [y]
				WHERE
					[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = 1
			), 1, 0) as [hasAdditionalPermissions],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[hasAdditionalPermissions] = 1 AND [t1].[hasAdditionalPermissions] IS NOT NULL

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[VEMPLOYEE_SCHDL_PERM]', N'U') IS NOT NULL)
	DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[VEMPLOYEE_SCH_SEC]', N'U') IS NOT NULL)
	DROP TABLE [VEMPLOYEE_SCH_SEC]

