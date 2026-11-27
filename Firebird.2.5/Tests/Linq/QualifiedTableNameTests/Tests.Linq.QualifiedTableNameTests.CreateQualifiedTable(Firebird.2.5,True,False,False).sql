-- Firebird.2.5 Firebird
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'QualifiedNameTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "QualifiedNameTable2"';
END

-- Firebird.2.5 Firebird
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Firebird.2.5 Firebird
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'QualifiedNameTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "QualifiedNameTable2"';
END

