﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

