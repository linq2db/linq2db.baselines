Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?', @p5='?'

INSERT INTO "UIntTable" ("Field16", "Field16N", "Field32", "Field32N", "Field64", "Field64N")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
SELECT "ID"
FROM "UIntTable"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


