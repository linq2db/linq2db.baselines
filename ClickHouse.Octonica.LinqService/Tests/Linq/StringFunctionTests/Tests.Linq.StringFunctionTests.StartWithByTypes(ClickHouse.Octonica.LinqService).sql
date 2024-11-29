BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringTypesTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS StringTypesTable
(
	Id             Int32,
	CharColumn     Nullable(FixedString(50)),
	NCharColumn    Nullable(FixedString(50)),
	VarCharColumn  Nullable(String),
	NVarCharColumn Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO StringTypesTable
(
	Id,
	CharColumn,
	NCharColumn,
	VarCharColumn,
	NVarCharColumn
)
VALUES
(
	1,
	'someString',
	'someString',
	'someString',
	'someString'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.CharColumn,
	t.NCharColumn,
	t.VarCharColumn,
	t.NVarCharColumn
FROM
	StringTypesTable t
WHERE
	startsWith(t.CharColumn, 'some') = true AND
	startsWith(t.NCharColumn, 'some') = true AND
	startsWith(t.VarCharColumn, 'some') = true AND
	startsWith(t.NVarCharColumn, 'some') = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringTypesTable

