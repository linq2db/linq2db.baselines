BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1788

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table1788
(
	Id     Int NOT NULL,
	Value1 Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 11

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 22

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 33

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1
FROM
	Table1788 t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	l.Id,
	l.Value1
FROM
	Table1788 p
		LEFT JOIN Table1788 l ON l.Id = p.Id + 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1788

