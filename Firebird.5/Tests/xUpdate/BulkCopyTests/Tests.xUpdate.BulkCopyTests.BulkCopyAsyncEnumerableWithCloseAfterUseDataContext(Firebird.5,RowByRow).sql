﻿BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

