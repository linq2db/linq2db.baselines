BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

SELECT FIRST @take
	"c_1"."Id"
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = @Id

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "AsyncDataTable"

