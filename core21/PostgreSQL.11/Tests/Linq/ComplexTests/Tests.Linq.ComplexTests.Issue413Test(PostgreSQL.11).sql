BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T1"
(
	"InstrumentId"         Int       NOT NULL,
	"InstrumentCode"       text          NULL,
	"CreateDate"           TimeStamp NOT NULL,
	"SourceInstrumentCode" text          NULL,

	CONSTRAINT "PK_T1" PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T2"
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T3"
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO "T3"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO "T2"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
SET     @IndexId = 1

INSERT INTO "T2"
(
	"InstrumentId",
	"IndexId"
)
VALUES
(
	:InstrumentId,
	:IndexId
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode Text(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate Timestamp -- DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'::timestamp
DECLARE @SourceInstrumentCode Text(7) -- String
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
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode Text(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate Timestamp -- DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'::timestamp
DECLARE @SourceInstrumentCode Text -- String
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
	:InstrumentId,
	:InstrumentCode,
	:CreateDate,
	:SourceInstrumentCode
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @cond Text(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate Timestamp -- DateTime
SET     @uptoDate = '2020-02-29 17:54:55.123'::timestamp

SELECT DISTINCT
	ins."SourceInstrumentCode"
FROM
	"T1" ins_1
		INNER JOIN "T2" idx ON ins_1."InstrumentId" = idx."InstrumentId"
		INNER JOIN "T3" w ON idx."IndexId" = w."IndexId"
		INNER JOIN "T1" ins ON w."InstrumentId" = ins."InstrumentId"
WHERE
	ins."SourceInstrumentCode" IS NOT NULL AND ins_1."InstrumentCode" LIKE :cond ESCAPE '~' AND
	ins_1."CreateDate" <= :uptoDate
ORDER BY
	ins."SourceInstrumentCode"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T3"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T1"

