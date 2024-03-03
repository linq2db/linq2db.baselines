﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_person]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_student]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [i1084_student]
(
	[Id]            Int           NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] Int           NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[StatusBitmask] AND 128,
	[g_1].[StatusBitmask] AND 128
FROM
	[i1084_person] [t1]
		LEFT JOIN [i1084_student] [g_1] ON (([t1].[Id] = [g_1].[Id]) AND (CStr([t1].[Number]) = [g_1].[Number]))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_student]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_person]

