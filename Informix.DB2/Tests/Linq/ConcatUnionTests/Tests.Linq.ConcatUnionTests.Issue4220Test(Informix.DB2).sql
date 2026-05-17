-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @AOnly VarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO ConcreteA
(
	Id,
	AOnly
)
VALUES
(
	@Id,
	@AOnly
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @BOnly VarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO ConcreteB
(
	Id,
	BOnly
)
VALUES
(
	@Id,
	@BOnly
)

-- Informix.DB2 Informix

SELECT
	NVL(e.Id, NULL),
	e.AOnly,
	NULL::Int,
	NULL::NVarChar(255)
FROM
	ConcreteA e
UNION ALL
SELECT
	NULL::Int,
	NULL::NVarChar(255),
	e_1.Id,
	e_1.BOnly
FROM
	ConcreteB e_1

