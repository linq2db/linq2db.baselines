BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	1
FROM
	Person t1

