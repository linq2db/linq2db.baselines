-- Access.Jet.Odbc AccessODBC
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
DECLARE @StringStructRequired VarChar(8) -- AnsiString
SET     @StringStructRequired = 'must_set'
DECLARE @StringStructNullable VarChar -- AnsiString
SET     @StringStructNullable = NULL
DECLARE @StringStructRequiredWithNull VarChar(2) -- AnsiString
SET     @StringStructRequiredWithNull = '-1'
DECLARE @StringStructNullableWithNull VarChar(2) -- AnsiString
SET     @StringStructNullableWithNull = '-1'
DECLARE @StringClassRequired VarChar(8) -- AnsiString
SET     @StringClassRequired = 'must_set'
DECLARE @StringClassNullable VarChar -- AnsiString
SET     @StringClassNullable = NULL
DECLARE @StringClassRequiredWithNull VarChar(2) -- AnsiString
SET     @StringClassRequiredWithNull = '-1'
DECLARE @StringClassNullableWithNull VarChar(2) -- AnsiString
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
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
DECLARE @StringStructRequired VarChar(3) -- AnsiString
SET     @StringStructRequired = 'one'
DECLARE @StringStructNullable VarChar(3) -- AnsiString
SET     @StringStructNullable = 'one'
DECLARE @StringStructRequiredWithNull VarChar(3) -- AnsiString
SET     @StringStructRequiredWithNull = 'one'
DECLARE @StringStructNullableWithNull VarChar(3) -- AnsiString
SET     @StringStructNullableWithNull = 'one'
DECLARE @StringClassRequired VarChar(3) -- AnsiString
SET     @StringClassRequired = 'one'
DECLARE @StringClassNullable VarChar(3) -- AnsiString
SET     @StringClassNullable = 'one'
DECLARE @StringClassRequiredWithNull VarChar(3) -- AnsiString
SET     @StringClassRequiredWithNull = 'one'
DECLARE @StringClassNullableWithNull VarChar(3) -- AnsiString
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

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

