BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Millisecond Integer -- Int32
SET     @Millisecond = 226

SELECT
	To_Char(t."TransactionDate" + :Millisecond * Interval '1 Millisecond', 'MS')::Int
FROM
	"Transactions" t

