BeforeExecute
-- Access AccessOleDb

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [i1084_student]
(
	[Id]            Int           NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] Int           NOT NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON (([k_1].[Id] = [joinedTable].[Id] AND (CStr([k_1].[Number]) = [joinedTable].[Number] OR CStr([k_1].[Number]) IS NULL AND [joinedTable].[Number] IS NULL)))

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_student]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_person]

