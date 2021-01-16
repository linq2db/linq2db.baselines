BeforeExecute
-- SqlServer.2005

CREATE TABLE [CreateTableTypes]
(
	[Id]                 Int         NOT NULL,
	[StringEnumNullable] NVarChar(2)     NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = N'40'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [CreateTableTypes]

