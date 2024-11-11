Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

INSERT INTO "Issue4646Table" ("Value", "ValueN")
VALUES (@p0, @p1);
SELECT "Id"
FROM "Issue4646Table"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


