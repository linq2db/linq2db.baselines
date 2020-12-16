BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Transactions"
(
	"TransactionId"   Int         NOT NULL,
	"TransactionDate" TimeStampTZ NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p1 TimestampTZ -- DateTimeOffset
SET     @p1 = '2020-02-29T17:54:55.1231234+00:40'
DECLARE @p2 TimestampTZ -- DateTimeOffset
SET     @p2 = '2021-02-28T17:54:55.1231234+00:40'
DECLARE @p3 TimestampTZ -- DateTimeOffset
SET     @p3 = '2019-02-28T17:54:55.1231234+00:40'
DECLARE @p4 TimestampTZ -- DateTimeOffset
SET     @p4 = '2020-03-29T17:54:55.1231234+00:40'
DECLARE @p5 TimestampTZ -- DateTimeOffset
SET     @p5 = '2020-01-29T17:54:55.1231234+00:40'
DECLARE @p6 TimestampTZ -- DateTimeOffset
SET     @p6 = '2020-03-01T17:54:55.1231234+00:40'
DECLARE @p7 TimestampTZ -- DateTimeOffset
SET     @p7 = '2020-02-28T17:54:55.1231234+00:40'
DECLARE @p8 TimestampTZ -- DateTimeOffset
SET     @p8 = '2020-02-29T18:54:55.1231234+00:40'
DECLARE @p9 TimestampTZ -- DateTimeOffset
SET     @p9 = '2020-02-29T16:54:55.1231234+00:40'
DECLARE @p10 TimestampTZ -- DateTimeOffset
SET     @p10 = '2020-02-29T17:55:55.1231234+00:40'
DECLARE @p11 TimestampTZ -- DateTimeOffset
SET     @p11 = '2020-02-29T17:53:55.1231234+00:40'
DECLARE @p12 TimestampTZ -- DateTimeOffset
SET     @p12 = '2020-02-29T17:54:56.1231234+00:40'
DECLARE @p13 TimestampTZ -- DateTimeOffset
SET     @p13 = '2020-02-29T17:54:54.1231234+00:40'
DECLARE @p14 TimestampTZ -- DateTimeOffset
SET     @p14 = '2020-02-29T17:54:55.1241234+00:40'
DECLARE @p15 TimestampTZ -- DateTimeOffset
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	t."TransactionDate" + :p_1 * Interval '1 Minute'
FROM
	"Transactions" t

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Transactions"

