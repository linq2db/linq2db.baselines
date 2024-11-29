BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table1
(
	ID  Int NOT NULL,
	ID2 Int     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @ID2 Integer(4) -- Int32
SET     @ID2 = 1

INSERT INTO Table1
(
	ID,
	ID2
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @ID2 Integer(4) -- Int32
SET     @ID2 = 2

INSERT INTO Table1
(
	ID,
	ID2
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table2
(
	ID  Int NOT NULL,
	ID3 Int     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @ID3 Integer(4) -- Int32
SET     @ID3 = 1

INSERT INTO Table2
(
	ID,
	ID3
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table3
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

INSERT INTO Table3
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table4

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table4
(
	ID  Int NOT NULL,
	ID3 Int     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @ID3 Integer(4) -- Int32
SET     @ID3 = 1

INSERT INTO Table4
(
	ID,
	ID3
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @ID3 Integer -- Int32
SET     @ID3 = NULL

INSERT INTO Table4
(
	ID,
	ID3
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Table2.ID,
	a_Table2.ID3,
	CASE
		WHEN a_Table2.ID IS NOT NULL AND a_Table3.ID IS NOT NULL
			THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	a_Table3.ID
FROM
	Table1 r
		LEFT JOIN Table2 a_Table2 ON r.ID2 = a_Table2.ID
		LEFT JOIN Table3 a_Table3 ON a_Table2.ID3 = a_Table3.ID
WHERE
	EXISTS(
		SELECT
			1
		FROM
			Table4 id
		WHERE
			a_Table3.ID = id.ID3 AND id.ID = r.ID
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

