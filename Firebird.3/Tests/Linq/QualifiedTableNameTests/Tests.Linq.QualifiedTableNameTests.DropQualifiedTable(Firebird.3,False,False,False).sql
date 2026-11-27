-- Firebird.3 Firebird3
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'QualifiedNameTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "QualifiedNameTable2"';
END

-- Firebird.3 Firebird3
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Firebird.3 Firebird3
DROP TABLE "QualifiedNameTable2"

