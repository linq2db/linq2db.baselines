BeforeExecute
-- Access AccessOleDb

DROP TABLE [stVersions]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [stVersions]
(
	[inId]     Int NOT NULL,
	[inIdMain] Int NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] Int NOT NULL,
	[inIdType]  Int NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [stMain]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [stMain]
(
	[inId]     Int NOT NULL,
	[inIdType] Int NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[v].[inId],
	[t].[inIdState],
	[a_Main].[inIdType]
FROM
	([stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON ([v].[inIdMain] = [a_Main].[inId]))
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON ([t].[inIdType] = [a_Main].[inIdType])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [stMain]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [stVersions]

