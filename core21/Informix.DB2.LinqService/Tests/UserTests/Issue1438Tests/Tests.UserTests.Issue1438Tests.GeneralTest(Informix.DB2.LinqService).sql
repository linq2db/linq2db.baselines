﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1438
(
	Id  SERIAL   NOT NULL,
	Has BOOLEAN  NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 1

SELECT FIRST 2
	t1.Id,
	t1.Has
FROM
	Issue1438 t1
WHERE
	t1.Id = @id_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1438

