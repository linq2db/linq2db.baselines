-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 1
DECLARE $IndexId Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	$InstrumentId,
	$IndexId
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 2
DECLARE $IndexId Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	$InstrumentId,
	$IndexId
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 3
DECLARE $IndexId Int32
SET     $IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	$InstrumentId,
	$IndexId
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 1
DECLARE $IndexId Int32
SET     $IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	$InstrumentId,
	$IndexId
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 2
DECLARE $IndexId Int32
SET     $IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	$InstrumentId,
	$IndexId
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 1
DECLARE $InstrumentCode Text(4) -- String
SET     $InstrumentCode = 'aaa1'u
DECLARE $CreateDate Timestamp -- DateTime2
SET     $CreateDate = Timestamp('2020-02-28T17:54:55.123123Z')
DECLARE $SourceInstrumentCode Text(7) -- String
SET     $SourceInstrumentCode = 'NOTNULL'u

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	$InstrumentId,
	$InstrumentCode,
	$CreateDate,
	$SourceInstrumentCode
)

-- YDB Ydb
DECLARE $InstrumentId Int32
SET     $InstrumentId = 2
DECLARE $InstrumentCode Text(4) -- String
SET     $InstrumentCode = 'aaa2'u
DECLARE $CreateDate Timestamp -- DateTime2
SET     $CreateDate = Timestamp('2020-02-28T17:54:55.123123Z')
DECLARE $SourceInstrumentCode Text -- String
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
	$InstrumentId,
	$InstrumentCode,
	$CreateDate,
	$SourceInstrumentCode
)

-- YDB Ydb
DECLARE $cond Text(4) -- String
SET     $cond = 'aaa%'u
DECLARE $uptoDate Timestamp -- DateTime2
SET     $uptoDate = Timestamp('2020-02-29T17:54:55.123123Z')

SELECT DISTINCT
	ins.SourceInstrumentCode as SourceInstrumentCode
FROM
	T1 t4
		INNER JOIN T2 idx ON t4.InstrumentId = idx.InstrumentId
		INNER JOIN T3 w ON idx.IndexId = w.IndexId
		INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
WHERE
	t4.InstrumentCode LIKE $cond ESCAPE '~'s AND t4.CreateDate <= $uptoDate AND
	ins.SourceInstrumentCode IS NOT NULL
ORDER BY
	SourceInstrumentCode

