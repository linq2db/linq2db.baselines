﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 10 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 20 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 30

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

