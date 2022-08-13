﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 Decimal(9, 5)
SET     @value_1 = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value_1 as Real)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 BinaryFloat -- Single
SET     @value_1 = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	:value_1
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 BinaryDouble -- Double
SET     @value_1 = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value_1 as Real)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 Decimal(9, 5)
SET     @value_1 = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value_1 as Float)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 BinaryFloat -- Single
SET     @value_1 = 6579.64648
DECLARE @take Int32
SET     @take = 1

SELECT
	Cast(:value_1 as Float)
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value_1 BinaryDouble -- Double
SET     @value_1 = 6579.6464800000003D
DECLARE @take Int32
SET     @take = 1

SELECT
	:value_1
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= :take

