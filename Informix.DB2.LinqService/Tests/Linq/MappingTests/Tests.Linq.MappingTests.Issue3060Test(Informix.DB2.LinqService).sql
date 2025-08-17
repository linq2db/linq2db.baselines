BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Uid VarBinary(16) -- Binary
SET     @Uid = {61,102,123,188,222,15,39,67}
-- value above truncated for logging
DECLARE @Id BigInt(8) -- Int64
SET     @Id = 0

UPDATE
	Issue3060Table t1
SET
	"Uid" = @Uid
WHERE
	t1.Id = @Id

