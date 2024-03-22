﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transactions"
(
	"TransactionId"   Int         NOT NULL,
	"TransactionDate" TimeStampTZ NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2021-02-28T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2019-02-28T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-03-29T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-01-29T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-03-01T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-28T17:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T18:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T16:14:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:15:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:13:55.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:14:56.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:14:54.1231234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 15
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:14:55.1241234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 16
DECLARE @TransactionDate TimestampTz -- DateTime
SET     @TransactionDate = '2020-02-29T17:14:55.1221234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	Cast(Floor(Extract(second from (t."TransactionDate" + :p * Interval '1 Second'))) as int)
FROM
	"Transactions" t

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

