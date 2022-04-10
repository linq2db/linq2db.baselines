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

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
SELECT 1,'someString','someString','someString','someString'

BeforeExecute
-- SqlCe
DECLARE @str_4 NVarChar(5) -- String
SET     @str_4 = 'some%'
DECLARE @str_5 NVarChar(5) -- String
SET     @str_5 = 'some%'
DECLARE @str_6 NVarChar(5) -- String
SET     @str_6 = 'some%'
DECLARE @str_7 NVarChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str_4 ESCAPE '~' AND
	[t].[NCharColumn] LIKE @str_5 ESCAPE '~' AND
	[t].[VarCharColumn] LIKE @str_6 ESCAPE '~' AND
	[t].[NVarCharColumn] LIKE @str_7 ESCAPE '~'

BeforeExecute
-- SqlCe

DROP TABLE [StringTypesTable]

