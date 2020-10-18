BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Transactions"
(
	"TransactionId"   Int         NOT NULL,
	"TransactionDate" TimeStampTZ NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 TimestampTz -- DateTimeOffset
SET     @p1 = '2020-02-29T17:54:55.1231234+00:40'
DECLARE @p2 TimestampTz -- DateTimeOffset
SET     @p2 = '2021-02-28T17:54:55.1231234+00:40'
DECLARE @p3 TimestampTz -- DateTimeOffset
SET     @p3 = '2019-02-28T17:54:55.1231234+00:40'
DECLARE @p4 TimestampTz -- DateTimeOffset
SET     @p4 = '2020-03-29T17:54:55.1231234+00:40'
DECLARE @p5 TimestampTz -- DateTimeOffset
SET     @p5 = '2020-01-29T17:54:55.1231234+00:40'
DECLARE @p6 TimestampTz -- DateTimeOffset
SET     @p6 = '2020-03-01T17:54:55.1231234+00:40'
DECLARE @p7 TimestampTz -- DateTimeOffset
SET     @p7 = '2020-02-28T17:54:55.1231234+00:40'
DECLARE @p8 TimestampTz -- DateTimeOffset
SET     @p8 = '2020-02-29T18:54:55.1231234+00:40'
DECLARE @p9 TimestampTz -- DateTimeOffset
SET     @p9 = '2020-02-29T16:54:55.1231234+00:40'
DECLARE @p10 TimestampTz -- DateTimeOffset
SET     @p10 = '2020-02-29T17:55:55.1231234+00:40'
DECLARE @p11 TimestampTz -- DateTimeOffset
SET     @p11 = '2020-02-29T17:53:55.1231234+00:40'
DECLARE @p12 TimestampTz -- DateTimeOffset
SET     @p12 = '2020-02-29T17:54:56.1231234+00:40'
DECLARE @p13 TimestampTz -- DateTimeOffset
SET     @p13 = '2020-02-29T17:54:54.1231234+00:40'
DECLARE @p14 TimestampTz -- DateTimeOffset
SET     @p14 = '2020-02-29T17:54:55.1241234+00:40'
DECLARE @p15 TimestampTz -- DateTimeOffset
SET     @p15 = '2020-02-29T17:54:55.1221234+00:40'

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 1

SELECT
	t."TransactionDate" + :p1 * Interval '1 Hour'
FROM
	"Transactions" t

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Transactions"

