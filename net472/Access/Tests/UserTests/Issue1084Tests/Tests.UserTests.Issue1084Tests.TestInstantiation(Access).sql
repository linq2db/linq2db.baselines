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
DECLARE @Number_1 Integer -- Int32
SET     @Number_1 = 1
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
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Number_1 Integer -- Int32
SET     @Number_1 = 2
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
	@Number_1,
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
DECLARE @Number_1 VarWChar(1) -- String
SET     @Number_1 = '1'
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
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Number_1 VarWChar(1) -- String
SET     @Number_1 = '2'
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
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_student]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [i1084_person]

