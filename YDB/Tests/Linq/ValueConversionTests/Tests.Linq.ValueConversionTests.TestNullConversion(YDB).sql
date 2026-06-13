-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $IntClassRequired Int32
SET     $IntClassRequired = 0
DECLARE $IntClassNullable Int32
SET     $IntClassNullable = NULL
DECLARE $IntClassRequiredWithNull Int32
SET     $IntClassRequiredWithNull = -1
DECLARE $IntClassNullableWithNull Int32
SET     $IntClassNullableWithNull = -1
DECLARE $StringStructRequired Text(8) -- AnsiString
SET     $StringStructRequired = 'must_set'u
DECLARE $StringStructNullable Text -- AnsiString
SET     $StringStructNullable = NULL
DECLARE $StringStructRequiredWithNull Text(2) -- AnsiString
SET     $StringStructRequiredWithNull = '-1'u
DECLARE $StringStructNullableWithNull Text(2) -- AnsiString
SET     $StringStructNullableWithNull = '-1'u
DECLARE $StringClassRequired Text(8) -- AnsiString
SET     $StringClassRequired = 'must_set'u
DECLARE $StringClassNullable Text -- AnsiString
SET     $StringClassNullable = NULL
DECLARE $StringClassRequiredWithNull Text(2) -- AnsiString
SET     $StringClassRequiredWithNull = '-1'u
DECLARE $StringClassNullableWithNull Text(2) -- AnsiString
SET     $StringClassNullableWithNull = '-1'u
DECLARE $IntStructRequired Int32
SET     $IntStructRequired = 0
DECLARE $IntStructNullable Int32
SET     $IntStructNullable = NULL
DECLARE $IntStructRequiredWithNull Int32
SET     $IntStructRequiredWithNull = -1
DECLARE $IntStructNullableWithNull Int32
SET     $IntStructNullableWithNull = -1

INSERT INTO DefaultValuesTable
(
	Id,
	IntClassRequired,
	IntClassNullable,
	IntClassRequiredWithNull,
	IntClassNullableWithNull,
	StringStructRequired,
	StringStructNullable,
	StringStructRequiredWithNull,
	StringStructNullableWithNull,
	StringClassRequired,
	StringClassNullable,
	StringClassRequiredWithNull,
	StringClassNullableWithNull,
	IntStructRequired,
	IntStructNullable,
	IntStructRequiredWithNull,
	IntStructNullableWithNull
)
VALUES
(
	$Id,
	$IntClassRequired,
	$IntClassNullable,
	$IntClassRequiredWithNull,
	$IntClassNullableWithNull,
	$StringStructRequired,
	$StringStructNullable,
	$StringStructRequiredWithNull,
	$StringStructNullableWithNull,
	$StringClassRequired,
	$StringClassNullable,
	$StringClassRequiredWithNull,
	$StringClassNullableWithNull,
	$IntStructRequired,
	$IntStructNullable,
	$IntStructRequiredWithNull,
	$IntStructNullableWithNull
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $IntClassRequired Int32
SET     $IntClassRequired = 1
DECLARE $IntClassNullable Int32
SET     $IntClassNullable = 1
DECLARE $IntClassRequiredWithNull Int32
SET     $IntClassRequiredWithNull = 1
DECLARE $IntClassNullableWithNull Int32
SET     $IntClassNullableWithNull = 1
DECLARE $StringStructRequired Text(3) -- AnsiString
SET     $StringStructRequired = 'one'u
DECLARE $StringStructNullable Text(3) -- AnsiString
SET     $StringStructNullable = 'one'u
DECLARE $StringStructRequiredWithNull Text(3) -- AnsiString
SET     $StringStructRequiredWithNull = 'one'u
DECLARE $StringStructNullableWithNull Text(3) -- AnsiString
SET     $StringStructNullableWithNull = 'one'u
DECLARE $StringClassRequired Text(3) -- AnsiString
SET     $StringClassRequired = 'one'u
DECLARE $StringClassNullable Text(3) -- AnsiString
SET     $StringClassNullable = 'one'u
DECLARE $StringClassRequiredWithNull Text(3) -- AnsiString
SET     $StringClassRequiredWithNull = 'one'u
DECLARE $StringClassNullableWithNull Text(3) -- AnsiString
SET     $StringClassNullableWithNull = 'one'u
DECLARE $IntStructRequired Int32
SET     $IntStructRequired = 1
DECLARE $IntStructNullable Int32
SET     $IntStructNullable = 1
DECLARE $IntStructRequiredWithNull Int32
SET     $IntStructRequiredWithNull = 1
DECLARE $IntStructNullableWithNull Int32
SET     $IntStructNullableWithNull = 1

INSERT INTO DefaultValuesTable
(
	Id,
	IntClassRequired,
	IntClassNullable,
	IntClassRequiredWithNull,
	IntClassNullableWithNull,
	StringStructRequired,
	StringStructNullable,
	StringStructRequiredWithNull,
	StringStructNullableWithNull,
	StringClassRequired,
	StringClassNullable,
	StringClassRequiredWithNull,
	StringClassNullableWithNull,
	IntStructRequired,
	IntStructNullable,
	IntStructRequiredWithNull,
	IntStructNullableWithNull
)
VALUES
(
	$Id,
	$IntClassRequired,
	$IntClassNullable,
	$IntClassRequiredWithNull,
	$IntClassNullableWithNull,
	$StringStructRequired,
	$StringStructNullable,
	$StringStructRequiredWithNull,
	$StringStructNullableWithNull,
	$StringClassRequired,
	$StringClassNullable,
	$StringClassRequiredWithNull,
	$StringClassNullableWithNull,
	$IntStructRequired,
	$IntStructNullable,
	$IntStructRequiredWithNull,
	$IntStructNullableWithNull
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.IntClassRequired as IntClassRequired,
	t1.IntClassNullable as IntClassNullable,
	t1.IntClassRequiredWithNull as IntClassRequiredWithNull,
	t1.IntClassNullableWithNull as IntClassNullableWithNull,
	t1.StringStructRequired as StringStructRequired,
	t1.StringStructNullable as StringStructNullable,
	t1.StringStructRequiredWithNull as StringStructRequiredWithNull,
	t1.StringStructNullableWithNull as StringStructNullableWithNull,
	t1.StringClassRequired as StringClassRequired,
	t1.StringClassNullable as StringClassNullable,
	t1.StringClassRequiredWithNull as StringClassRequiredWithNull,
	t1.StringClassNullableWithNull as StringClassNullableWithNull,
	t1.IntStructRequired as IntStructRequired,
	t1.IntStructNullable as IntStructNullable,
	t1.IntStructRequiredWithNull as IntStructRequiredWithNull,
	t1.IntStructNullableWithNull as IntStructNullableWithNull
FROM
	DefaultValuesTable t1
ORDER BY
	t1.Id

