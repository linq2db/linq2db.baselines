BeforeExecute
-- SqlCe

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit           NOT NULL,
	[ID]     Int           NOT NULL,
	[NAME]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

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
			END as [hasAdditionalPermissions],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[hasAdditionalPermissions] = 1 AND [t1].[hasAdditionalPermissions] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SqlCe

DROP TABLE [VEMPLOYEE_SCH_SEC]

