BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit            NOT NULL,
	[ID]     Int            NOT NULL,
	[NAME]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
			), 1, 0) as [allowEdit],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[allowEdit] = 1 AND [t1].[allowEdit] IS NOT NULL

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			1 as [allowEdit],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[allowEdit] = 1 AND [t1].[allowEdit] IS NOT NULL

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [VEMPLOYEE_SCH_SEC]

