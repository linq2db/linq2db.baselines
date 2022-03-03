BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit           NOT NULL,
	[ID]     Int           NOT NULL,
	[NAME]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			Iif(EXISTS(
				SELECT
					*
				FROM
					[VEMPLOYEE_SCHDL_PERM] [y]
				WHERE
					[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = True
			), True, False) as [hasAdditionalPermissions],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[hasAdditionalPermissions] = True AND [t1].[hasAdditionalPermissions] IS NOT NULL

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCH_SEC]

