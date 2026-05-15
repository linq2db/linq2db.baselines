-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN t.VarCharColumn IS NOT NULL THEN trim(LEADING '.+' FROM t.VarCharColumn)
		ELSE NULL
	END
FROM
	StringTrimTable t
WHERE
	t.Id = 100

