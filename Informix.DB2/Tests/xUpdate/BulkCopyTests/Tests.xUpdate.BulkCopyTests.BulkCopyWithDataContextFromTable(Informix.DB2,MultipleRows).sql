﻿BeforeExecute
INSERT BULK SimpleBulkCopyTable

BeforeExecute
INSERT BULK SimpleBulkCopyTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

