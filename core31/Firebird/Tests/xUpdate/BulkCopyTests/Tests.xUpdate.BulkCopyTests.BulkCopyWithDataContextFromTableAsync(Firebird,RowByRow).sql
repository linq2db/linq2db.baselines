﻿BeforeExecute
-- Firebird

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird (asynchronously)
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
-- Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 10 FROM rdb$database

BeforeExecute
-- Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 20 FROM rdb$database

BeforeExecute
-- Firebird (asynchronously)
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

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SimpleBulkCopyTable"';
END

