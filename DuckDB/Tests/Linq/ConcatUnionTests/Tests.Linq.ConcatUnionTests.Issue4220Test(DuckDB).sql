-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $AOnly NVarChar(6) -- String
SET     $AOnly = 'a only'

INSERT INTO ConcreteA
(
	Id,
	AOnly
)
VALUES
(
	$Id,
	$AOnly
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $BOnly NVarChar(6) -- String
SET     $BOnly = 'b only'

INSERT INTO ConcreteB
(
	Id,
	BOnly
)
VALUES
(
	$Id,
	$BOnly
)

-- DuckDB

SELECT
	e.Id,
	e.AOnly,
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR)
FROM
	ConcreteA e
UNION ALL
SELECT
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR),
	e_1.Id,
	e_1.BOnly
FROM
	ConcreteB e_1

