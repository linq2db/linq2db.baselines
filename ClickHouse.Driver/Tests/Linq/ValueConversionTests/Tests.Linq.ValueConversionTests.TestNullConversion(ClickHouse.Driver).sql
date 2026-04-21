-- ClickHouse.Driver ClickHouse

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
	1,
	0,
	NULL,
	-1,
	-1,
	'must_set',
	NULL,
	'-1',
	'-1',
	'must_set',
	NULL,
	'-1',
	'-1',
	0,
	NULL,
	-1,
	-1
)

-- ClickHouse.Driver ClickHouse

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
	2,
	1,
	1,
	1,
	1,
	'one',
	'one',
	'one',
	'one',
	'one',
	'one',
	'one',
	'one',
	1,
	1,
	1,
	1
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.IntClassRequired,
	t1.IntClassNullable,
	t1.IntClassRequiredWithNull,
	t1.IntClassNullableWithNull,
	t1.StringStructRequired,
	t1.StringStructNullable,
	t1.StringStructRequiredWithNull,
	t1.StringStructNullableWithNull,
	t1.StringClassRequired,
	t1.StringClassNullable,
	t1.StringClassRequiredWithNull,
	t1.StringClassNullableWithNull,
	t1.IntStructRequired,
	t1.IntStructNullable,
	t1.IntStructRequiredWithNull,
	t1.IntStructNullableWithNull
FROM
	DefaultValuesTable t1
ORDER BY
	t1.Id

