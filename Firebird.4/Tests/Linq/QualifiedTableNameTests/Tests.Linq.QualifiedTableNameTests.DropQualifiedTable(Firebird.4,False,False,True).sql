-- Firebird.4 Firebird4
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'QualifiedNameTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "QualifiedNameTable2"';
END

-- Firebird.4 Firebird4
CREATE TABLE "QualifiedNameTable2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY (ID)
)

-- Firebird.4 Firebird4
DROP TABLE "QualifiedNameTable2"

