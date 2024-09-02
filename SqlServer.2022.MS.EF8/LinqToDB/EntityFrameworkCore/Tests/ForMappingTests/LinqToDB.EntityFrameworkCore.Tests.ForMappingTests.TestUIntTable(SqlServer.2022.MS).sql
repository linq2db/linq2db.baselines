Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int64), @p3='?' (DbType = Int64), @p4='?' (Precision = 20) (DbType = Decimal), @p5='?' (Precision = 20) (DbType = Decimal)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [UIntTable] ([Field16], [Field16N], [Field32], [Field32N], [Field64], [Field64N])
OUTPUT INSERTED.[ID]
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


