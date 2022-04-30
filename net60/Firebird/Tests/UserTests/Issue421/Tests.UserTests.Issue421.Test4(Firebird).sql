﻿BeforeExecute
-- Firebird

CREATE TABLE "BlobClass19"
(
	"Id"        Int  NOT NULL,
	"BlobValue" Blob,

	CONSTRAINT "PK_BlobClass19" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

INSERT INTO "BlobClass19"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	X'010203'
)

BeforeExecute
-- Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass19" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass19" "t1"
WHERE
	"t1"."Id" = 1

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BlobClass19')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BlobClass19"';
END

