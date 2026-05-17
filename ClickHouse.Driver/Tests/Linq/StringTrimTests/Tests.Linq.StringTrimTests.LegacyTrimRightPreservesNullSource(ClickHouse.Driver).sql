-- ClickHouse.Driver ClickHouse

INSERT INTO StringTrimTable
(
	Id,
	CharColumn,
	NCharColumn,
	VarCharColumn,
	NVarCharColumn
)
VALUES
(
	100,
	NULL,
	NULL,
	NULL,
	NULL
)

-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN t.VarCharColumn IS NOT NULL THEN trim(TRAILING '.+' FROM t.VarCharColumn)
		ELSE NULL
	END
FROM
	StringTrimTable t
WHERE
	t.Id = 100

