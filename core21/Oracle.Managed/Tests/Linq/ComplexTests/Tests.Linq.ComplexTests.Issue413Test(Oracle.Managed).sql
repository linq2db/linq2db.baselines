BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE T1
(
	InstrumentId         Int          NOT NULL,
	InstrumentCode       VarChar(255)     NULL,
	CreateDate           timestamp    NOT NULL,
	SourceInstrumentCode VarChar(255)     NULL,

	CONSTRAINT PK_T1 PRIMARY KEY (InstrumentId)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE T2
(
	InstrumentId Int NOT NULL,
	IndexId      Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE T3
(
	InstrumentId Int NOT NULL,
	IndexId      Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 3
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode Varchar2(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = TO_TIMESTAMP('2020-02-28 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @SourceInstrumentCode Varchar2(7) -- String
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
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode Varchar2(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = TO_TIMESTAMP('2020-02-28 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @SourceInstrumentCode Varchar2 -- String
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
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @cond Varchar2(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate TimeStamp -- DateTime
SET     @uptoDate = TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT DISTINCT 
	ins.SourceInstrumentCode
FROM
	T1 ins_1
		INNER JOIN T2 idx ON ins_1.InstrumentId = idx.InstrumentId
		INNER JOIN T3 w ON idx.IndexId = w.IndexId
		INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
WHERE
	ins.SourceInstrumentCode IS NOT NULL AND ins_1.InstrumentCode LIKE :cond ESCAPE '~' AND
	ins_1.CreateDate <= :uptoDate
ORDER BY
	ins.SourceInstrumentCode

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE T3

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE T2

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE T1

