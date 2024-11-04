BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [i1084_person]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [i1084_student]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [i1084_student]
(
	[Id]            Int           NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] Int           NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[k_1].[StatusBitmask] AND 128,
	[g_1].[StatusBitmask] AND 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON ([k_1].[Id] = [g_1].[Id] AND CStr([k_1].[Number]) = [g_1].[Number])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [i1084_student]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [i1084_person]

