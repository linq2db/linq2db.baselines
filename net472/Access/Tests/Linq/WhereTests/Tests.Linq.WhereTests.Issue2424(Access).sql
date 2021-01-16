BeforeExecute
-- Access AccessOleDb

DROP TABLE [Isue2424Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '1'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '3'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '5'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Isue2424Table]

