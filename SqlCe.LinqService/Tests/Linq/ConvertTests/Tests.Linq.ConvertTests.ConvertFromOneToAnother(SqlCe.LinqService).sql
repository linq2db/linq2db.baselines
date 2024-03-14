BeforeExecute
-- SqlCe
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (1)
	Convert(Real, @value) as [c1]
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlCe
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (1)
	@value as [c1]
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlCe
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (1)
	Convert(Real, @value) as [c1]
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlCe
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (1)
	Convert(Float, @value) as [c1]
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlCe
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (1)
	Convert(Float, @value) as [c1]
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlCe
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (1)
	@value as [c1]
FROM
	[LinqDataTypes] [_]

