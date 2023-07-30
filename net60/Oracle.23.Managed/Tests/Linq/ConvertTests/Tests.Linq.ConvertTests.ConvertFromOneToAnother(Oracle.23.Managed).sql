BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
FETCH NEXT :take ROWS ONLY

