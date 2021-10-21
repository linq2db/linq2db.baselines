BeforeExecute
-- SqlCe

DROP TABLE [StringTypesTable]

BeforeExecute
-- SqlCe

CREATE TABLE [StringTypesTable]
(
	[Id]             Int          NOT NULL,
	[CharColumn]     NChar(50)        NULL,
	[NCharColumn]    NChar(50)        NULL,
	[VarCharColumn]  NVarChar(50)     NULL,
	[NVarCharColumn] NVarChar(50)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CharColumn NVarChar(10) -- String
SET     @CharColumn = 'someString'
DECLARE @NCharColumn NVarChar(10) -- String
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn NVarChar(10) -- String
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn NVarChar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

BeforeExecute
-- SqlCe
DECLARE @str NVarChar(5) -- String
SET     @str = 'some%'
DECLARE @str_1 NVarChar(5) -- String
SET     @str_1 = 'some%'
DECLARE @str_2 NVarChar(5) -- String
SET     @str_2 = 'some%'
DECLARE @str_3 NVarChar(5) -- String
SET     @str_3 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str ESCAPE '~' AND
	[t].[NCharColumn] LIKE @str_1 ESCAPE '~' AND
	[t].[VarCharColumn] LIKE @str_2 ESCAPE '~' AND
	[t].[NVarCharColumn] LIKE @str_3 ESCAPE '~'

BeforeExecute
-- SqlCe

DROP TABLE [StringTypesTable]

