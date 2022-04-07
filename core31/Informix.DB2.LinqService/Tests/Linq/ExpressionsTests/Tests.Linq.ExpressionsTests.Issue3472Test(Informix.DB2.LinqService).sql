﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3472TableDCTX

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3472TableDCTX
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Issue3472TableDCTX
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	(
		SELECT
			Count(*)
		FROM
			Person p
		WHERE
			p.PersonID = t1.Id
	)
FROM
	Issue3472TableDCTX t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3472TableDCTX

