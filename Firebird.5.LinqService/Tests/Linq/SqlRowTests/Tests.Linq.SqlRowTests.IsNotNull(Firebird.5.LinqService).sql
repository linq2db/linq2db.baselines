﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Ints"
			(
				"One"   Int NOT NULL,
				"Two"   Int NOT NULL,
				"Three" Int NOT NULL,
				"Four"  Int NOT NULL,
				"Five"  Int NOT NULL,
				"Nil"   Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Two Integer -- Int32
SET     @Two = 2
DECLARE @Three Integer -- Int32
SET     @Three = 3
DECLARE @Four Integer -- Int32
SET     @Four = 4
DECLARE @Five Integer -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	1 = 0

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	1 = 0

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

