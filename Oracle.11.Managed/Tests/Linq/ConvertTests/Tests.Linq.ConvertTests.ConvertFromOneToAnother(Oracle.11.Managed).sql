BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Real)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value as Float)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	:value
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

