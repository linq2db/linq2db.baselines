BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transactions"
(
	"TransactionId"   Int         NOT NULL,
	"TransactionDate" TimeStampTZ NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @:p1 TimestampTz -- DateTime
SET     @:p1 = '2020-02-29T17:14:55.1231234+00:00'
DECLARE @:p2 TimestampTz -- DateTime
SET     @:p2 = '2021-02-28T17:14:55.1231234+00:00'
DECLARE @:p3 TimestampTz -- DateTime
SET     @:p3 = '2019-02-28T17:14:55.1231234+00:00'
DECLARE @:p4 TimestampTz -- DateTime
SET     @:p4 = '2020-03-29T17:14:55.1231234+00:00'
DECLARE @:p5 TimestampTz -- DateTime
SET     @:p5 = '2020-01-29T17:14:55.1231234+00:00'
DECLARE @:p6 TimestampTz -- DateTime
SET     @:p6 = '2020-03-01T17:14:55.1231234+00:00'
DECLARE @:p7 TimestampTz -- DateTime
SET     @:p7 = '2020-02-28T17:14:55.1231234+00:00'
DECLARE @:p8 TimestampTz -- DateTime
SET     @:p8 = '2020-02-29T18:14:55.1231234+00:00'
DECLARE @:p9 TimestampTz -- DateTime
SET     @:p9 = '2020-02-29T16:14:55.1231234+00:00'
DECLARE @:p10 TimestampTz -- DateTime
SET     @:p10 = '2020-02-29T17:15:55.1231234+00:00'
DECLARE @:p11 TimestampTz -- DateTime
SET     @:p11 = '2020-02-29T17:13:55.1231234+00:00'
DECLARE @:p12 TimestampTz -- DateTime
SET     @:p12 = '2020-02-29T17:14:56.1231234+00:00'
DECLARE @:p13 TimestampTz -- DateTime
SET     @:p13 = '2020-02-29T17:14:54.1231234+00:00'
DECLARE @:p14 TimestampTz -- DateTime
SET     @:p14 = '2020-02-29T17:14:55.1241234+00:00'
DECLARE @:p15 TimestampTz -- DateTime
SET     @:p15 = '2020-02-29T17:14:55.1221234+00:00'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(1,:p1),
(3,:p2),
(4,:p3),
(5,:p4),
(6,:p5),
(7,:p6),
(8,:p7),
(9,:p8),
(10,:p9),
(11,:p10),
(12,:p11),
(13,:p12),
(14,:p13),
(15,:p14),
(16,:p15)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Minute')::timestamp - t."TransactionDate"::timestamp)))::Int
FROM
	"Transactions" t

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

