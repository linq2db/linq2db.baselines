﻿BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird
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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SimpleBulkCopyTable"';
END

