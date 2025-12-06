-- Sybase.Managed Sybase
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP 1
	CAST(@value AS Real)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP 1
	CAST(@value AS Real)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT TOP 1
	CAST(@value AS Real)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP 1
	CAST(@value AS Float)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP 1
	CAST(@value AS Float)
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @value Double
SET     @value = 6579.6464800000003

SELECT TOP 1
	CAST(@value AS Float)
FROM
	[LinqDataTypes] [t1]

