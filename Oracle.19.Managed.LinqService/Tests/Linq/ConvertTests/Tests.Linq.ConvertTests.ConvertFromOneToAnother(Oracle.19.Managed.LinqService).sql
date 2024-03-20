﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT
	Cast(:value as Real) as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648

SELECT
	:value as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D

SELECT
	Cast(:value as Real) as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT
	Cast(:value as Float) as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value BinaryFloat -- Single
SET     @value = 6579.64648

SELECT
	Cast(:value as Float) as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value BinaryDouble -- Double
SET     @value = 6579.6464800000003D

SELECT
	:value as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

