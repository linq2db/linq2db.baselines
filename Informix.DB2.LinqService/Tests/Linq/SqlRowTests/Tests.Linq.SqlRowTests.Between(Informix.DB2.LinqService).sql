BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Ints

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Ints
(
	One   Int NOT NULL,
	Two   Int NOT NULL,
	Three Int NOT NULL,
	Four  Int NOT NULL,
	Five  Int NOT NULL,
	Nil   Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @One Integer(4) -- Int32
SET     @One = 1
DECLARE @Two Integer(4) -- Int32
SET     @Two = 2
DECLARE @Three Integer(4) -- Int32
SET     @Three = 3
DECLARE @Four Integer(4) -- Int32
SET     @Four = 4
DECLARE @Five Integer(4) -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

INSERT INTO Ints
(
	One,
	Two,
	Three,
	Four,
	Five,
	Nil
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
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Two >= i.One * 2 AND i.Two <= i.One + i.One

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Three >= i.One AND i.Three <= i.Four

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Two >= i.Three

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One OR i.Two = i.One AND i.Five >= i.One) AND
	(i.Two < i.Three OR i.Two = i.Three AND i.Five <= i.Two)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One OR i.Two = i.One AND i.Five >= i.One) AND
	i.Five <= i.Two

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One OR i.Two = i.One AND i.Nil >= i.One) AND
	(i.Two < i.Three OR i.Two = i.Three AND i.Nil <= i.One)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Nil >= i.One AND i.Nil <= i.Three

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One OR i.Two = i.One AND i.Five >= i.Nil) AND
	(i.Two < i.Three OR i.Two = i.Three AND i.Five <= i.Nil)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One OR i.Two = i.One AND i.Nil >= i.Nil) AND
	(i.Two < i.Three OR i.Two = i.Three AND i.Nil <= i.Nil)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.Nil OR i.Two = i.Nil AND i.Two >= i.One) AND
	(i.Two < i.Three OR i.Two = i.Three AND i.Two <= i.Five)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Ints

