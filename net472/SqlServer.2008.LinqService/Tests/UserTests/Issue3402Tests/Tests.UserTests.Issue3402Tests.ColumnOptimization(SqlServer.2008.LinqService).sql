BeforeExecute
-- SqlServer.2008

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit            NOT NULL,
	[ID]     Int            NOT NULL,
	[NAME]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						[VEMPLOYEE_SCHDL_PERM] [y]
					WHERE
						[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = 1
				)
					THEN 1
				ELSE 0
			END as [allowEdit],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[allowEdit] = 1 AND [t1].[allowEdit] IS NOT NULL

BeforeExecute
-- SqlServer.2008

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
	[t1].[allowEdit] = 1

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[VEMPLOYEE_SCHDL_PERM]', N'U') IS NOT NULL)
	DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[VEMPLOYEE_SCH_SEC]', N'U') IS NOT NULL)
	DROP TABLE [VEMPLOYEE_SCH_SEC]

