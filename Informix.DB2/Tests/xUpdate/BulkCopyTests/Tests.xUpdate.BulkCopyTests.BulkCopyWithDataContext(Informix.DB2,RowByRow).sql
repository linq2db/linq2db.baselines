﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

