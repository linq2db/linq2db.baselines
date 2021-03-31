BeforeExecute
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
MERGE INTO "TestTable" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Id" = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Fd"
	)
	VALUES
	(
		1,
		2
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

