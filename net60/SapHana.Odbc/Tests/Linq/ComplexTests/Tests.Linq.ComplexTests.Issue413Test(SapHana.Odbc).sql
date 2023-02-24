﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "T1"
(
	"InstrumentId"         Integer       NOT NULL,
	"InstrumentCode"       NVarChar(255)     NULL,
	"CreateDate"           Timestamp     NOT NULL,
	"SourceInstrumentCode" NVarChar(255)     NULL,

	PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "T2"
(
	"InstrumentId" Integer NOT NULL,
	"IndexId"      Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "T3"
(
	"InstrumentId" Integer NOT NULL,
	"IndexId"      Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate  -- DateTime
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate  -- DateTime
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @cond_1 NVarChar(4) -- String
SET     @cond_1 = 'aaa%'
DECLARE @uptoDate  -- DateTime
SET     @uptoDate = '2020-02-29 17:54:55.123'

SELECT
	"t4"."SourceInstrumentCode"
FROM
	(
		SELECT DISTINCT
			"ins"."SourceInstrumentCode"
		FROM
			"T1" "_"
				INNER JOIN "T2" "idx" ON "_"."InstrumentId" = "idx"."InstrumentId"
				INNER JOIN "T3" "w" ON "idx"."IndexId" = "w"."IndexId"
				INNER JOIN "T1" "ins" ON "w"."InstrumentId" = "ins"."InstrumentId"
		WHERE
			"ins"."SourceInstrumentCode" IS NOT NULL AND "_"."InstrumentCode" LIKE ? ESCAPE '~' AND
			"_"."CreateDate" <= ?
	) "t4"
ORDER BY
	"t4"."SourceInstrumentCode"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T1"

