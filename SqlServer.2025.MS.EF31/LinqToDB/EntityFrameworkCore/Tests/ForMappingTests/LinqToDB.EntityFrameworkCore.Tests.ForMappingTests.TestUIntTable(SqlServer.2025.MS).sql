Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int64), @p3='?' (DbType = Int64), @p4='?' (DbType = Decimal), @p5='?' (DbType = Decimal)

SET NOCOUNT ON;
INSERT INTO [UIntTable] ([Field16], [Field16N], [Field32], [Field32N], [Field64], [Field64N])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
SELECT [ID]
FROM [UIntTable]
WHERE @@ROWCOUNT = 1 AND [ID] = scope_identity();


-- SqlServer.2025 SqlServer.2022
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



