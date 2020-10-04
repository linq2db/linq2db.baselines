BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE T1
(
	"InstrumentId"         Int           NOT NULL,
	"InstrumentCode"       NVarChar(255)     NULL,
	"CreateDate"           timestamp     NOT NULL,
	"SourceInstrumentCode" NVarChar(255)     NULL,

	CONSTRAINT PK_T1 PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE T2
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE T3
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate Timestamp(20) -- DateTime
SET     @CreateDate = '2020-02-28-17.54.55.123123'
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentId Integer(4) -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate Timestamp(20) -- DateTime
SET     @CreateDate = '2020-02-28-17.54.55.123123'
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
-- DB2 DB2.LUW DB2LUW
DECLARE @cond VarChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate Timestamp(20) -- DateTime
SET     @uptoDate = '2020-02-29-17.54.55.123123'

SELECT DISTINCT
	"ins"."SourceInstrumentCode"
FROM
	T1 "_"
		INNER JOIN T2 "idx" ON "_"."InstrumentId" = "idx"."InstrumentId"
		INNER JOIN T3 "w" ON "idx"."IndexId" = "w"."IndexId"
		INNER JOIN T1 "ins" ON "w"."InstrumentId" = "ins"."InstrumentId"
WHERE
	"ins"."SourceInstrumentCode" IS NOT NULL AND "_"."InstrumentCode" LIKE @cond ESCAPE '~' AND
	"_"."CreateDate" <= @uptoDate
ORDER BY
	"ins"."SourceInstrumentCode"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE T3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE T2

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE T1

