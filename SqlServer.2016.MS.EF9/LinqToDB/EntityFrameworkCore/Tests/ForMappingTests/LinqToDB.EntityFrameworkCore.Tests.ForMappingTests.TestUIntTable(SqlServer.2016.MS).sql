Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int64), @p3='?' (DbType = Int64), @p4='?' (Precision = 20) (DbType = Decimal), @p5='?' (Precision = 20) (DbType = Decimal)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [UIntTable] ([Field16], [Field16N], [Field32], [Field32N], [Field64], [Field64N])
OUTPUT INSERTED.[ID]
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


-- SqlServer.2016
DECLARE @field64 Decimal
SET     @field64 = 5

SELECT TOP (1)
	[e].[ID],
	[e].[Field16],
	[e].[Field32],
	[e].[Field64],
	[e].[Field16N],
	[e].[Field32N],
	[e].[Field64N]
FROM
	[UIntTable] [e]
WHERE
	[e].[Field64] = @field64



