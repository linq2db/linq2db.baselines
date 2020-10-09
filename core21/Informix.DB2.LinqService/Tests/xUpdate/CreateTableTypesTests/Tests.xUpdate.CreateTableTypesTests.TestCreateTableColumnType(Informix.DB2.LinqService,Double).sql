BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id       Int   NOT NULL,
	"Double" Float NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Double_1 Double(8)
SET     @Double_1 = 0

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Double_1 Double(8)
SET     @Double_1 = 3.1400000000000001

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.Id, 
	t1."Double"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes

