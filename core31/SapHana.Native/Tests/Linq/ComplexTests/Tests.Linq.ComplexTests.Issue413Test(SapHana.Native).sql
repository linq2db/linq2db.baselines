BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "T1"
(
	"InstrumentId"         Integer       NOT NULL,
	"InstrumentCode"       NVarChar(255)     NULL,
	"CreateDate"           Timestamp     NOT NULL,
	"SourceInstrumentCode" NVarChar(255)     NULL,

	PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "T2"
(
	"InstrumentId" Integer NOT NULL,
	"IndexId"      Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "T3"
(
	"InstrumentId" Integer NOT NULL,
	"IndexId"      Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:"InstrumentId",
	:"IndexId"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:"InstrumentId",
	:"IndexId"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:"InstrumentId",
	:"IndexId"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO "T2"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:"InstrumentId",
	:"IndexId"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO "T2"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:"InstrumentId",
	:"IndexId"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate  -- DateTime2
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode NVarChar(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO "T1"
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	:"InstrumentId",
	:"InstrumentCode",
	:"CreateDate",
	:"SourceInstrumentCode"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate  -- DateTime2
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode NVarChar -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO "T1"
(
	"InstrumentId",
	"InstrumentCode",
	"CreateDate",
	"SourceInstrumentCode"
)
VALUES
(
	:"InstrumentId",
	:"InstrumentCode",
	:"CreateDate",
	:"SourceInstrumentCode"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @cond NVarChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate  -- DateTime2
SET     @uptoDate = '2020-02-29 17:54:55.123'

SELECT DISTINCT
	"ins"."SourceInstrumentCode"
FROM
	"T1" "_"
		INNER JOIN "T2" "idx" ON "_"."InstrumentId" = "idx"."InstrumentId"
		INNER JOIN "T3" "w" ON "idx"."IndexId" = "w"."IndexId"
		INNER JOIN "T1" "ins" ON "w"."InstrumentId" = "ins"."InstrumentId"
WHERE
	"ins"."SourceInstrumentCode" IS NOT NULL AND "_"."InstrumentCode" LIKE :"cond" ESCAPE '~' AND
	"_"."CreateDate" <= :"uptoDate"
ORDER BY
	"ins"."SourceInstrumentCode"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "T3"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "T2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "T1"

