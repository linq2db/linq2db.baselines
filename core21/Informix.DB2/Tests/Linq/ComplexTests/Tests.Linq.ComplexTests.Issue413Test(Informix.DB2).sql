﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE T1
(
	InstrumentId         Int                       NOT NULL,
	InstrumentCode       NVarChar(255)                 NULL,
	CreateDate           datetime year to fraction NOT NULL,
	SourceInstrumentCode NVarChar(255)                 NULL,

	PRIMARY KEY (InstrumentId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE T2
(
	InstrumentId Int NOT NULL,
	IndexId      Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE T3
(
	InstrumentId Int NOT NULL,
	IndexId      Int NOT NULL
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix
DECLARE @cond_1 VarChar(4) -- String
SET     @cond_1 = 'aaa%'
DECLARE @uptoDate Timestamp(16) -- DateTime
SET     @uptoDate = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

SELECT DISTINCT
	ins.SourceInstrumentCode
FROM
	T1 ins_1
		INNER JOIN T2 idx ON ins_1.InstrumentId = idx.InstrumentId
		INNER JOIN T3 w ON idx.IndexId = w.IndexId
		INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
WHERE
	ins.SourceInstrumentCode IS NOT NULL AND ins_1.InstrumentCode LIKE @cond_1 ESCAPE '~' AND
	ins_1.CreateDate <= @uptoDate
ORDER BY
	ins.SourceInstrumentCode

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE T3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE T2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE T1

