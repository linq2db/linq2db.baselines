-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisposableTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DisposableTable"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_DisposableTable" PRIMARY KEY (ID)
			)
		';
END

-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisposableTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisposableTable"';
END

