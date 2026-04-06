-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 1
DECLARE $IndexId  -- Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($IndexId AS INTEGER)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 2
DECLARE $IndexId  -- Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($IndexId AS INTEGER)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 3
DECLARE $IndexId  -- Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($IndexId AS INTEGER)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 1
DECLARE $IndexId  -- Int32
SET     $IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($IndexId AS INTEGER)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 2
DECLARE $IndexId  -- Int32
SET     $IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($IndexId AS INTEGER)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 1
DECLARE $InstrumentCode NVarChar(4) -- String
SET     $InstrumentCode = 'aaa1'
DECLARE $CreateDate NVarChar(26) -- String
SET     $CreateDate = '2020-02-28 17:54:55.123123'
DECLARE $SourceInstrumentCode NVarChar(7) -- String
SET     $SourceInstrumentCode = 'NOTNULL'

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($InstrumentCode AS VARCHAR),
	CAST($CreateDate AS TIMESTAMP),
	CAST($SourceInstrumentCode AS VARCHAR)
)

-- DuckDB
DECLARE $InstrumentId  -- Int32
SET     $InstrumentId = 2
DECLARE $InstrumentCode NVarChar(4) -- String
SET     $InstrumentCode = 'aaa2'
DECLARE $CreateDate NVarChar(26) -- String
SET     $CreateDate = '2020-02-28 17:54:55.123123'
DECLARE $SourceInstrumentCode  -- Object
SET     $SourceInstrumentCode = NULL

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	CAST($InstrumentId AS INTEGER),
	CAST($InstrumentCode AS VARCHAR),
	CAST($CreateDate AS TIMESTAMP),
	CAST($SourceInstrumentCode AS VARCHAR)
)

-- DuckDB
DECLARE $cond NVarChar(4) -- String
SET     $cond = 'aaa%'
DECLARE $uptoDate NVarChar(26) -- String
SET     $uptoDate = '2020-02-29 17:54:55.123123'

SELECT DISTINCT
	ins.SourceInstrumentCode
FROM
	T1 t4
		INNER JOIN T2 idx ON t4.InstrumentId = idx.InstrumentId
		INNER JOIN T3 w ON idx.IndexId = w.IndexId
		INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
WHERE
	t4.InstrumentCode LIKE CAST($cond AS VARCHAR) ESCAPE '~' AND
	t4.CreateDate <= CAST($uptoDate AS TIMESTAMP) AND ins.SourceInstrumentCode IS NOT NULL
ORDER BY
	ins.SourceInstrumentCode

