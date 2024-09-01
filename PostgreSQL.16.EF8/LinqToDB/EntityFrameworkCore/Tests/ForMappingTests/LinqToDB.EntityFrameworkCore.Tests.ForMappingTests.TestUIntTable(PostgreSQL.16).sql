Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int64), @p3='?' (DbType = Int64), @p4='?' (DbType = Decimal), @p5='?' (DbType = Decimal)

INSERT INTO "UIntTable" ("Field16", "Field16N", "Field32", "Field32N", "Field64", "Field64N")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5)
RETURNING "ID";


