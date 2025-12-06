-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
DECLARE @uptoDate TimeStamp -- DateTime
SET     @uptoDate = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"t5"."SourceInstrumentCode"
FROM
	(
		SELECT DISTINCT
			"ins"."SourceInstrumentCode"
		FROM
			T1 "t4"
				INNER JOIN T2 "idx" ON "t4"."InstrumentId" = "idx"."InstrumentId"
				INNER JOIN T3 "w" ON "idx"."IndexId" = "w"."IndexId"
				INNER JOIN T1 "ins" ON "w"."InstrumentId" = "ins"."InstrumentId"
		WHERE
			"t4"."InstrumentCode" STARTING WITH 'aaa' AND "t4"."CreateDate" <= @uptoDate AND
			"ins"."SourceInstrumentCode" IS NOT NULL
	) "t5"
ORDER BY
	"t5"."SourceInstrumentCode"

