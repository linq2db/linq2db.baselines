﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

