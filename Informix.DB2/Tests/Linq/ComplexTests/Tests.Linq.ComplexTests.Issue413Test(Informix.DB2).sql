-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer(4) -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	@InstrumentId,
	@IndexId
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer(4) -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	@InstrumentId,
	@IndexId
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Integer(4) -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	@InstrumentId,
	@IndexId
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer(4) -- Int32
SET     @IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	@InstrumentId,
	@IndexId
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer(4) -- Int32
SET     @IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	@InstrumentId,
	@IndexId
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate Timestamp(16) -- DateTime
SET     @CreateDate = TO_DATE('2020-02-28 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @SourceInstrumentCode VarChar(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

-- Informix.DB2 Informix
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate Timestamp(16) -- DateTime
SET     @CreateDate = TO_DATE('2020-02-28 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @SourceInstrumentCode VarChar -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

-- Informix.DB2 Informix
DECLARE @uptoDate Timestamp(16) -- DateTime
SET     @uptoDate = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

SELECT
	t5.SourceInstrumentCode
FROM
	(
		SELECT DISTINCT
			ins.SourceInstrumentCode
		FROM
			T1 t4
				INNER JOIN T2 idx ON t4.InstrumentId = idx.InstrumentId
				INNER JOIN T3 w ON idx.IndexId = w.IndexId
				INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
		WHERE
			t4.InstrumentCode LIKE 'aaa%' ESCAPE '~' AND t4.CreateDate <= @uptoDate AND
			ins.SourceInstrumentCode IS NOT NULL
	) t5
ORDER BY
	t5.SourceInstrumentCode

