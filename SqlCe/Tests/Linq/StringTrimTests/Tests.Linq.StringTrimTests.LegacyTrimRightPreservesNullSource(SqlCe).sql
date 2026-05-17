-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @CharColumn NVarChar -- String
SET     @CharColumn = NULL
DECLARE @NCharColumn NVarChar -- String
SET     @NCharColumn = NULL
DECLARE @VarCharColumn NVarChar -- String
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn NVarChar -- String
SET     @NVarCharColumn = NULL

INSERT INTO [StringTrimTable]
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

-- SqlCe

SELECT
	[t].[VarCharColumn]
FROM
	[StringTrimTable] [t]
WHERE
	[t].[Id] = 100

