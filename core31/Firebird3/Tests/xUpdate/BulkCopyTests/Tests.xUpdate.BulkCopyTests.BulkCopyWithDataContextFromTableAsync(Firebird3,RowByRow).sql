﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)
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
-- Firebird3 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 10 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 20 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)
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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SimpleBulkCopyTable"';
END

