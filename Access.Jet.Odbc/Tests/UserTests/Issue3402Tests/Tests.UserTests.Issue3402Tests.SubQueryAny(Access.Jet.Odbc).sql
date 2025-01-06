BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCH_SEC]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit           NOT NULL,
	[ID]     Int           NOT NULL,
	[NAME]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        Int NOT NULL,
	[IS_ACTIVE] Bit NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
			[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE]
	)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [VEMPLOYEE_SCH_SEC]

