﻿BeforeExecute
-- Firebird

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

/* My Test */
SELECT
	"t1"."Id",
	"t1"."Fd"
FROM
	"TestTable" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

