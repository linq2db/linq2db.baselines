﻿Parameters:
@p0='?' (DbType = UInt16), @p1='?' (DbType = UInt16), @p2='?' (DbType = UInt32), @p3='?' (DbType = UInt32), @p4='?' (DbType = UInt64), @p5='?' (DbType = UInt64)

INSERT INTO "UIntTable" ("Field16", "Field16N", "Field32", "Field32N", "Field64", "Field64N")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5)
RETURNING "ID";


