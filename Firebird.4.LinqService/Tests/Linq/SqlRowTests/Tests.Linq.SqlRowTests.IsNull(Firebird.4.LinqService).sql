﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
	CAST(@One AS Int),
	CAST(@Two AS Int),
	CAST(@Three AS Int),
	CAST(@Four AS Int),
	CAST(@Five AS Int),
	CAST(@Nil AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."One" IS NULL AND "i"."Two" IS NULL AND "i"."Three" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."One" IS NULL AND "i"."Nil" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Nil" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Ints')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Ints"';
END

