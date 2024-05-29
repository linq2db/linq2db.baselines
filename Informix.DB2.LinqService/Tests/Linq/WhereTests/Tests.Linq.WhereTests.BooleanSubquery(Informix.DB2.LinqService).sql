BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereWithBool

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS WhereWithBool
(
	Id        Int     NOT NULL,
	BoolValue BOOLEAN NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'

INSERT INTO WhereWithBool
(
	Id,
	BoolValue
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t,
	WhereWithBool x
WHERE
	x.BoolValue = 't' AND x.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereWithBool

