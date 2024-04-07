BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Numeric(9, 5) -- Decimal
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as decimal)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as decimal)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Numeric(9, 5) -- Decimal
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Numeric(9, 5) -- Decimal
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
LIMIT :take

