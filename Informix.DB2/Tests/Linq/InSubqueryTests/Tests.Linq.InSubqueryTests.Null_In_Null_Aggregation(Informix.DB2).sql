BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

INSERT INTO test_in_1
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS test_in_2
(
	ID Int     NULL,
	GV Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @GV Integer(4) -- Int32
SET     @GV = 1

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @GV Integer(4) -- Int32
SET     @GV = 0

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer -- Int32
SET     @ID = NULL
DECLARE @GV Integer -- Int32
SET     @GV = NULL

INSERT INTO test_in_2
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MIN(g_1.ID) as In_1
				FROM
					test_in_2 g_1
				GROUP BY
					g_1.GV
			) t1
		WHERE
			t.ID = t1.In_1 AND t.ID IS NOT NULL AND t1.In_1 IS NOT NULL OR
			t.ID IS NULL AND t1.In_1 IS NULL
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.GV
FROM
	test_in_2 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_1

