-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntClassRequired Integer -- Int32
SET     @IntClassRequired = 0
DECLARE @IntClassNullable Integer -- Int32
SET     @IntClassNullable = NULL
DECLARE @IntClassRequiredWithNull Integer -- Int32
SET     @IntClassRequiredWithNull = -1
DECLARE @IntClassNullableWithNull Integer -- Int32
SET     @IntClassNullableWithNull = -1
DECLARE @StringStructRequired VarChar(8) -- AnsiString
SET     @StringStructRequired = 'must_set'
DECLARE @StringStructNullable VarChar -- AnsiString
SET     @StringStructNullable = NULL
DECLARE @StringStructRequiredWithNu VarChar(2) -- AnsiString
SET     @StringStructRequiredWithNu = '-1'
DECLARE @StringStructNullableWithNu VarChar(2) -- AnsiString
SET     @StringStructNullableWithNu = '-1'
DECLARE @StringClassRequired VarChar(8) -- AnsiString
SET     @StringClassRequired = 'must_set'
DECLARE @StringClassNullable VarChar -- AnsiString
SET     @StringClassNullable = NULL
DECLARE @StringClassRequiredWithNul VarChar(2) -- AnsiString
SET     @StringClassRequiredWithNul = '-1'
DECLARE @StringClassNullableWithNul VarChar(2) -- AnsiString
SET     @StringClassNullableWithNul = '-1'
DECLARE @IntStructRequired Integer -- Int32
SET     @IntStructRequired = 0
DECLARE @IntStructNullable Integer -- Int32
SET     @IntStructNullable = NULL
DECLARE @IntStructRequiredWithNull Integer -- Int32
SET     @IntStructRequiredWithNull = -1
DECLARE @IntStructNullableWithNull Integer -- Int32
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
	@StringStructRequiredWithNu,
	@StringStructNullableWithNu,
	@StringClassRequired,
	@StringClassNullable,
	@StringClassRequiredWithNul,
	@StringClassNullableWithNul,
	@IntStructRequired,
	@IntStructNullable,
	@IntStructRequiredWithNull,
	@IntStructNullableWithNull
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntClassRequired Integer -- Int32
SET     @IntClassRequired = 1
DECLARE @IntClassNullable Integer -- Int32
SET     @IntClassNullable = 1
DECLARE @IntClassRequiredWithNull Integer -- Int32
SET     @IntClassRequiredWithNull = 1
DECLARE @IntClassNullableWithNull Integer -- Int32
SET     @IntClassNullableWithNull = 1
DECLARE @StringStructRequired VarChar(3) -- AnsiString
SET     @StringStructRequired = 'one'
DECLARE @StringStructNullable VarChar(3) -- AnsiString
SET     @StringStructNullable = 'one'
DECLARE @StringStructRequiredWithNu VarChar(3) -- AnsiString
SET     @StringStructRequiredWithNu = 'one'
DECLARE @StringStructNullableWithNu VarChar(3) -- AnsiString
SET     @StringStructNullableWithNu = 'one'
DECLARE @StringClassRequired VarChar(3) -- AnsiString
SET     @StringClassRequired = 'one'
DECLARE @StringClassNullable VarChar(3) -- AnsiString
SET     @StringClassNullable = 'one'
DECLARE @StringClassRequiredWithNul VarChar(3) -- AnsiString
SET     @StringClassRequiredWithNul = 'one'
DECLARE @StringClassNullableWithNul VarChar(3) -- AnsiString
SET     @StringClassNullableWithNul = 'one'
DECLARE @IntStructRequired Integer -- Int32
SET     @IntStructRequired = 1
DECLARE @IntStructNullable Integer -- Int32
SET     @IntStructNullable = 1
DECLARE @IntStructRequiredWithNull Integer -- Int32
SET     @IntStructRequiredWithNull = 1
DECLARE @IntStructNullableWithNull Integer -- Int32
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
	@StringStructRequiredWithNu,
	@StringStructNullableWithNu,
	@StringClassRequired,
	@StringClassNullable,
	@StringClassRequiredWithNul,
	@StringClassNullableWithNul,
	@IntStructRequired,
	@IntStructNullable,
	@IntStructRequiredWithNull,
	@IntStructNullableWithNull
)

-- Sybase.Managed Sybase

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

