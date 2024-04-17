BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Real)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Float -- Single
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Real)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Real)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Float)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Float -- Single
SET     @value = 6579.64648
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Float)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Double
SET     @value = 6579.6464800000003
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Cast(@value as Float)
FROM
	"LinqDataTypes" "t1"
FETCH NEXT @take ROWS ONLY

