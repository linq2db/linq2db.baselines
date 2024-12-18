BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS test_in_1
(
	ID Int NOT NULL
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
	ID Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

INSERT INTO test_in_2
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
SET     @ID = 2

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer -- Int32
SET     @ID = NULL

INSERT INTO test_in_2
(
	ID
)
VALUES
(
	@ID
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
			test_in_2 p
		WHERE
			t.ID = p.ID AND p.ID IS NOT NULL
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
	t1.ID
FROM
	test_in_2 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_in_1

