﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "BaseTable"
(
	"Value" Int NOT NULL,
	"Id"    Int NOT NULL,

	CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
SELECT 100,1 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "BaseTable"

