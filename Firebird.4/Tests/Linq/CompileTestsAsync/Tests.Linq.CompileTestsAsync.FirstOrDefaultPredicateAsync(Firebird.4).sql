﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AsyncDataTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AsyncDataTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AsyncDataTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AsyncDataTable"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "AsyncDataTable"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 5 FROM rdb$database UNION ALL
SELECT 6 FROM rdb$database UNION ALL
SELECT 7 FROM rdb$database UNION ALL
SELECT 8 FROM rdb$database UNION ALL
SELECT 9 FROM rdb$database UNION ALL
SELECT 10 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"c_1"."Id"
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = @Id
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AsyncDataTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AsyncDataTable"';
END

