-- SqlCe
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (1)
	CAST(@value AS Real) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

-- SqlCe
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (1)
	CAST(@value AS Real) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

-- SqlCe
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (1)
	CAST(@value AS Real) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

-- SqlCe
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (1)
	CAST(@value AS Float) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

-- SqlCe
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (1)
	CAST(@value AS Float) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

-- SqlCe
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (1)
	CAST(@value AS Float) as [ServerConvert]
FROM
	[LinqDataTypes] [t1]

