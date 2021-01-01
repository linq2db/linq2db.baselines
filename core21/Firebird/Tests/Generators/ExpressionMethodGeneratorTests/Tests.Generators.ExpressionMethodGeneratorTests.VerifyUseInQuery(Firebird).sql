BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExprPerson')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ExprPerson"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExprPerson')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ExprPerson"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "ExprPerson"
(
	"Id",
	"Name"
)
SELECT 0,'Person0' FROM rdb$database UNION ALL
SELECT 1,'Person1' FROM rdb$database UNION ALL
SELECT 2,'Person2' FROM rdb$database UNION ALL
SELECT 3,'Person3' FROM rdb$database UNION ALL
SELECT 4,'Person4' FROM rdb$database UNION ALL
SELECT 5,'Person5' FROM rdb$database UNION ALL
SELECT 6,'Person6' FROM rdb$database UNION ALL
SELECT 7,'Person7' FROM rdb$database UNION ALL
SELECT 8,'Person8' FROM rdb$database UNION ALL
SELECT 9,'Person9' FROM rdb$database UNION ALL
SELECT 10,'Person10' FROM rdb$database UNION ALL
SELECT 11,'Person11' FROM rdb$database UNION ALL
SELECT 12,'Person12' FROM rdb$database UNION ALL
SELECT 13,'Person13' FROM rdb$database UNION ALL
SELECT 14,'Person14' FROM rdb$database UNION ALL
SELECT 15,'Person15' FROM rdb$database UNION ALL
SELECT 16,'Person16' FROM rdb$database UNION ALL
SELECT 17,'Person17' FROM rdb$database UNION ALL
SELECT 18,'Person18' FROM rdb$database UNION ALL
SELECT 19,'Person19' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExprPerson')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ExprPerson"';
END

