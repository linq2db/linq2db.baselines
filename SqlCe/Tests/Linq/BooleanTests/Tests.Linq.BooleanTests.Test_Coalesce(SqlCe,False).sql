BeforeExecute
-- SqlCe
DECLARE @True Bit -- Boolean
SET     @True = 1

SELECT
	[r].[Id],
	[r].[Boolean] as [Boolean_1],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal] as [Decimal_1],
	[r].[DecimalN],
	[r].[Double] as [Double_1],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], @True) = 1

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Boolean] as [Boolean_1],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal] as [Decimal_1],
	[t1].[DecimalN],
	[t1].[Double] as [Double_1],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @False Bit -- Boolean
SET     @False = 0

SELECT
	[r].[Id],
	[r].[Boolean] as [Boolean_1],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal] as [Decimal_1],
	[r].[DecimalN],
	[r].[Double] as [Double_1],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], @False) = 1

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Boolean] as [Boolean_1],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal] as [Decimal_1],
	[t1].[DecimalN],
	[t1].[Double] as [Double_1],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Boolean] as [Boolean_1],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal] as [Decimal_1],
	[r].[DecimalN],
	[r].[Double] as [Double_1],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], CASE
		WHEN [r].[Id] % 2 = 1 THEN 1
		ELSE 0
	END) = 1

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Boolean] as [Boolean_1],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal] as [Decimal_1],
	[t1].[DecimalN],
	[t1].[Double] as [Double_1],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

