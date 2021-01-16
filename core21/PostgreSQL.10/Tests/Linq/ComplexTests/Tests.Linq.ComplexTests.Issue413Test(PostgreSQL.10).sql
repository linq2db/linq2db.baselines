BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "T1"
(
	"InstrumentId"         Int       NOT NULL,
	"InstrumentCode"       text          NULL,
	"CreateDate"           TimeStamp NOT NULL,
	"SourceInstrumentCode" text          NULL,

	CONSTRAINT "PK_T1" PRIMARY KEY ("InstrumentId")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "T2"
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "T3"
(
	"InstrumentId" Int NOT NULL,
	"IndexId"      Int NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "T3"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "T2"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "T1"

