BeforeExecute
-- Firebird

CREATE TABLE T1
(
	"InstrumentId"         Int                                    NOT NULL,
	"InstrumentCode"       VarChar(255) CHARACTER SET UNICODE_FSS,
	"CreateDate"           TimeStamp                              NOT NULL,
	"SourceInstrumentCode" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT PK_T1 PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- Firebird

CREATE TABLE T2
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- Firebird

CREATE TABLE T3
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO T3
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO T2
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO T2
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = CAST('2020-02-28 17:54:55.123' AS timestamp)
DECLARE @SourceInstrumentCode VarChar(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO T1
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- Firebird
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate TimeStamp -- DateTime
SET     @CreateDate = CAST('2020-02-28 17:54:55.123' AS timestamp)
DECLARE @SourceInstrumentCode VarChar -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO T1
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- Firebird
DECLARE @uptoDate TimeStamp -- DateTime
SET     @uptoDate = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT DISTINCT
	"ins"."SourceInstrumentCode"
FROM
	T1 "ins_1"
		INNER JOIN T2 "idx" ON "ins_1"."InstrumentId" = "idx"."InstrumentId"
		INNER JOIN T3 "w" ON "idx"."IndexId" = "w"."IndexId"
		INNER JOIN T1 "ins" ON "w"."InstrumentId" = "ins"."InstrumentId"
WHERE
	"ins"."SourceInstrumentCode" IS NOT NULL AND "ins_1"."InstrumentCode" STARTING WITH 'aaa' AND
	"ins_1"."CreateDate" <= @uptoDate
ORDER BY
	"ins"."SourceInstrumentCode"

BeforeExecute
-- Firebird

DROP TABLE T3

BeforeExecute
-- Firebird

DROP TABLE T2

BeforeExecute
-- Firebird

DROP TABLE T1

