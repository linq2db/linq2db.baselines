BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_person]

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Number Integer -- Int32
SET     @Number = 1
DECLARE @StatusBitmask Integer -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Number Integer -- Int32
SET     @Number = 2
DECLARE @StatusBitmask Integer -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_student]

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Number VarWChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask Integer -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Number VarWChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask Integer -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[k_1].[StatusBitmask] AND 128,
	[g_1].[StatusBitmask] AND 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON ([k_1].[Id] = [g_1].[Id] AND CStr([k_1].[Number]) = [g_1].[Number])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_student]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_person]

