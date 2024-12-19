BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [stVersions]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [stVersions]
(
	[inId]     Int NOT NULL,
	[inIdMain] Int NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] Int NOT NULL,
	[inIdType]  Int NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [stMain]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [stMain]
(
	[inId]     Int NOT NULL,
	[inIdType] Int NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[v].[inId],
	[t].[inIdState],
	[a_Main].[inIdType]
FROM
	([stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON ([v].[inIdMain] = [a_Main].[inId]))
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON ([t].[inIdType] = [a_Main].[inIdType])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [stMain]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [stVersions]

