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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Number Int -- Int32
SET     @Number = 1
DECLARE @StatusBitmask Int -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Number Int -- Int32
SET     @Number = 2
DECLARE @StatusBitmask Int -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	?,
	?,
	?
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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Number NVarChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask Int -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Number NVarChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask Int -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[k_1].[StatusBitmask] AND 128,
	[g_1].[StatusBitmask] AND 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON (([k_1].[Id] = [g_1].[Id]) AND (CStr([k_1].[Number]) = [g_1].[Number]))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_student]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [i1084_person]

