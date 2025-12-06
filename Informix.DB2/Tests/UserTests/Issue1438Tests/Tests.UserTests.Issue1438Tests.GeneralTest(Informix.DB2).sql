-- Informix.DB2 Informix
DECLARE @Has Char(1) -- StringFixedLength
SET     @Has = 't'

INSERT INTO Issue1438
(
	Has
)
VALUES
(
	@Has
)

-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT FIRST 2
	t1.Id,
	t1.Has
FROM
	Issue1438 t1
WHERE
	t1.Id = @id

