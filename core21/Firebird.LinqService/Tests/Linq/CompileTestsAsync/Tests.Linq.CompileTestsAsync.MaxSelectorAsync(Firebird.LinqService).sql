BeforeExecute
-- Firebird

CREATE TABLE "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

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
-- Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

SELECT 
	Max("c_1"."Id")
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" > @Id

BeforeExecute
-- Firebird

DROP TABLE "AsyncDataTable"

