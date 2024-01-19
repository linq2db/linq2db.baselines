BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (@take)
	Convert(Real, @value)
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (@take)
	@value
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (@take)
	Convert(Real, @value)
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Decimal(9, 5)
SET     @value = 6579.64648

SELECT TOP (@take)
	Convert(Float, @value)
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Real -- Single
SET     @value = 6579.64648

SELECT TOP (@take)
	Convert(Float, @value)
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @value Float -- Double
SET     @value = 6579.6464800000003

SELECT TOP (@take)
	@value
FROM
	[LinqDataTypes] [_]

