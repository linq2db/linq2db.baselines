-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntClassRequired Int -- Int32
SET     @IntClassRequired = 0
DECLARE @IntClassNullable Int -- Int32
SET     @IntClassNullable = NULL
DECLARE @IntClassRequiredWithNull Int -- Int32
SET     @IntClassRequiredWithNull = -1
DECLARE @IntClassNullableWithNull Int -- Int32
SET     @IntClassNullableWithNull = -1
DECLARE @StringStructRequired NVarChar(8) -- String
SET     @StringStructRequired = 'must_set'
DECLARE @StringStructNullable NVarChar -- String
SET     @StringStructNullable = NULL
DECLARE @StringStructRequiredWithNull NVarChar(2) -- String
SET     @StringStructRequiredWithNull = '-1'
DECLARE @StringStructNullableWithNull NVarChar(2) -- String
SET     @StringStructNullableWithNull = '-1'
DECLARE @StringClassRequired NVarChar(8) -- String
SET     @StringClassRequired = 'must_set'
DECLARE @StringClassNullable NVarChar -- String
SET     @StringClassNullable = NULL
DECLARE @StringClassRequiredWithNull NVarChar(2) -- String
SET     @StringClassRequiredWithNull = '-1'
DECLARE @StringClassNullableWithNull NVarChar(2) -- String
SET     @StringClassNullableWithNull = '-1'
DECLARE @IntStructRequired Int -- Int32
SET     @IntStructRequired = 0
DECLARE @IntStructNullable Int -- Int32
SET     @IntStructNullable = NULL
DECLARE @IntStructRequiredWithNull Int -- Int32
SET     @IntStructRequiredWithNull = -1
DECLARE @IntStructNullableWithNull Int -- Int32
SET     @IntStructNullableWithNull = -1

INSERT INTO [DefaultValuesTable]
(
	[Id],
	[IntClassRequired],
	[IntClassNullable],
	[IntClassRequiredWithNull],
	[IntClassNullableWithNull],
	[StringStructRequired],
	[StringStructNullable],
	[StringStructRequiredWithNull],
	[StringStructNullableWithNull],
	[StringClassRequired],
	[StringClassNullable],
	[StringClassRequiredWithNull],
	[StringClassNullableWithNull],
	[IntStructRequired],
	[IntStructNullable],
	[IntStructRequiredWithNull],
	[IntStructNullableWithNull]
)
VALUES
(
	@Id,
	@IntClassRequired,
	@IntClassNullable,
	@IntClassRequiredWithNull,
	@IntClassNullableWithNull,
	@StringStructRequired,
	@StringStructNullable,
	@StringStructRequiredWithNull,
	@StringStructNullableWithNull,
	@StringClassRequired,
	@StringClassNullable,
	@StringClassRequiredWithNull,
	@StringClassNullableWithNull,
	@IntStructRequired,
	@IntStructNullable,
	@IntStructRequiredWithNull,
	@IntStructNullableWithNull
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntClassRequired Int -- Int32
SET     @IntClassRequired = 1
DECLARE @IntClassNullable Int -- Int32
SET     @IntClassNullable = 1
DECLARE @IntClassRequiredWithNull Int -- Int32
SET     @IntClassRequiredWithNull = 1
DECLARE @IntClassNullableWithNull Int -- Int32
SET     @IntClassNullableWithNull = 1
DECLARE @StringStructRequired NVarChar(3) -- String
SET     @StringStructRequired = 'one'
DECLARE @StringStructNullable NVarChar(3) -- String
SET     @StringStructNullable = 'one'
DECLARE @StringStructRequiredWithNull NVarChar(3) -- String
SET     @StringStructRequiredWithNull = 'one'
DECLARE @StringStructNullableWithNull NVarChar(3) -- String
SET     @StringStructNullableWithNull = 'one'
DECLARE @StringClassRequired NVarChar(3) -- String
SET     @StringClassRequired = 'one'
DECLARE @StringClassNullable NVarChar(3) -- String
SET     @StringClassNullable = 'one'
DECLARE @StringClassRequiredWithNull NVarChar(3) -- String
SET     @StringClassRequiredWithNull = 'one'
DECLARE @StringClassNullableWithNull NVarChar(3) -- String
SET     @StringClassNullableWithNull = 'one'
DECLARE @IntStructRequired Int -- Int32
SET     @IntStructRequired = 1
DECLARE @IntStructNullable Int -- Int32
SET     @IntStructNullable = 1
DECLARE @IntStructRequiredWithNull Int -- Int32
SET     @IntStructRequiredWithNull = 1
DECLARE @IntStructNullableWithNull Int -- Int32
SET     @IntStructNullableWithNull = 1

INSERT INTO [DefaultValuesTable]
(
	[Id],
	[IntClassRequired],
	[IntClassNullable],
	[IntClassRequiredWithNull],
	[IntClassNullableWithNull],
	[StringStructRequired],
	[StringStructNullable],
	[StringStructRequiredWithNull],
	[StringStructNullableWithNull],
	[StringClassRequired],
	[StringClassNullable],
	[StringClassRequiredWithNull],
	[StringClassNullableWithNull],
	[IntStructRequired],
	[IntStructNullable],
	[IntStructRequiredWithNull],
	[IntStructNullableWithNull]
)
VALUES
(
	@Id,
	@IntClassRequired,
	@IntClassNullable,
	@IntClassRequiredWithNull,
	@IntClassNullableWithNull,
	@StringStructRequired,
	@StringStructNullable,
	@StringStructRequiredWithNull,
	@StringStructNullableWithNull,
	@StringClassRequired,
	@StringClassNullable,
	@StringClassRequiredWithNull,
	@StringClassNullableWithNull,
	@IntStructRequired,
	@IntStructNullable,
	@IntStructRequiredWithNull,
	@IntStructNullableWithNull
)

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[IntClassRequired],
	[t1].[IntClassNullable],
	[t1].[IntClassRequiredWithNull],
	[t1].[IntClassNullableWithNull],
	[t1].[StringStructRequired],
	[t1].[StringStructNullable],
	[t1].[StringStructRequiredWithNull],
	[t1].[StringStructNullableWithNull],
	[t1].[StringClassRequired],
	[t1].[StringClassNullable],
	[t1].[StringClassRequiredWithNull],
	[t1].[StringClassNullableWithNull],
	[t1].[IntStructRequired],
	[t1].[IntStructNullable],
	[t1].[IntStructRequiredWithNull],
	[t1].[IntStructNullableWithNull]
FROM
	[DefaultValuesTable] [t1]
ORDER BY
	[t1].[Id]

